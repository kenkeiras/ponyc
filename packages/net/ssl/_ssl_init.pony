use "path:/usr/local/opt/libressl/lib" if osx
use "lib:ssl"
use "lib:crypto"

primitive _SSLInit
  """
  This initialises SSL when the program begins.
  """
  fun _init() =>
    @OPENSSL_init_ssl[None](U64(0), U64(0))
