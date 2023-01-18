```
$ binwalk --dd="cer" ../xbl.elf

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             ELF, 64-bit LSB executable, version 1 (SYSV)
5336          0x14D8          Certificate in DER format (x509 v3), header length: 4, sequence length: 1259
6599          0x19C7          Certificate in DER format (x509 v3), header length: 4, sequence length: 979
7582          0x1D9E          Certificate in DER format (x509 v3), header length: 4, sequence length: 961
19521         0x4C41          Unix path: /dev/icbcfg/boot
29510         0x7346          VxWorks symbol table, big endian, first entry: [type: initialized data, code address: 0x6601, symbol address: 0x5F00]
45864         0xB328          CRC32 polynomial table, little endian
49432         0xC118          CRC32 polynomial table, little endian
531056        0x81A70         UEFI PI Firmware Volume, volume size: 3145728, header size: 0, revision: 0, EFI Firmware File System v2, GUID: 8C8CE578-8A3D-4F1C-3599-896185C32DD3
794392        0xC1F18         gzip compressed data, from Unix, last modified: 1970-01-01 00:00:00 (null date)
1115171       0x110423        MySQL ISAM index file Version 3
3676784       0x381A70        ELF, 64-bit LSB executable, version 1 (SYSV)
3677792       0x381E60        Certificate in DER format (x509 v3), header length: 4, sequence length: 1059
3678855       0x382287        Certificate in DER format (x509 v3), header length: 4, sequence length: 1106
3679965       0x3826DD        Certificate in DER format (x509 v3), header length: 4, sequence length: 1061
3932720       0x3C0230        SHA256 hash constants, little endian
3932976       0x3C0330        SHA256 hash constants, little endian
3933336       0x3C0498        AES S-Box
3933592       0x3C0598        AES Inverse S-Box
4069621       0x3E18F5        XML document, version: "1.0"
4072103       0x3E22A7        XML document, version: "1.0"
4075348       0x3E2F54        XML document, version: "1.0"
4078394       0x3E3B3A        XML document, version: "1.0"
4081678       0x3E480E        XML document, version: "1.0"
4084506       0x3E531A        XML document, version: "1.0"
4086987       0x3E5CCB        XML document, version: "1.0"
4089298       0x3E65D2        XML document, version: "1.0"

$ openssl x509 -in 1D9E -text -noout
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number: 5213 (0x145d)
        Signature Algorithm: rsassaPss        
        Hash Algorithm: sha256
        Mask Algorithm: mgf1 with sha256
         Salt Length: 0x20
        Trailer Field: 0x01 (default)
        Issuer: O = Motorola Inc, OU = Motorola PKI, CN = Root CA 724
        Validity
            Not Before: Mar  1 13:00:20 2021 GMT
            Not After : Mar  1 13:00:20 2041 GMT
        Subject: O = Motorola Inc, OU = Motorola PKI, CN = Root CA 724
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:af:ee:fe:4a:79:31:68:21:40:05:3f:48:f8:41:
                    08:85:b7:e5:b0:7f:d2:7a:db:46:b1:ec:ef:7c:b0:
                    94:3e:6f:dd:53:76:c6:3e:dd:49:d2:48:eb:81:31:
                    ad:d9:61:3a:8a:16:98:8c:72:46:02:03:47:87:91:
                    57:b6:69:85:0f:18:e8:5a:11:48:2d:f2:a5:4c:3c:
                    32:30:44:43:7c:61:5a:4a:bf:87:9f:45:67:5c:1d:
                    5d:e0:c9:1d:f0:e0:59:05:48:54:47:0e:24:eb:b7:
                    d2:59:53:f5:b5:54:b7:ed:01:37:6a:76:b7:91:6a:
                    0b:7d:1c:29:aa:53:44:bf:8a:de:72:19:c9:3c:b1:
                    7a:cc:2b:1d:f8:02:68:59:cb:5a:2a:4b:06:55:32:
                    a1:8c:b7:94:41:eb:58:ec:62:41:bf:95:39:46:f3:
                    15:2a:32:23:9a:68:f7:d1:76:6e:c5:2c:67:71:83:
                    d3:ed:81:df:c2:a0:91:bd:15:06:42:46:80:36:ea:
                    a9:5a:b1:f3:07:9a:29:9b:07:fe:d9:b1:79:a9:87:
                    42:ef:c1:de:9b:90:51:a0:3d:8a:69:79:e2:fd:48:
                    89:28:23:c9:1d:71:61:0c:02:78:e7:f9:2f:c3:25:
                    9a:e3:7c:15:18:a8:c8:88:df:fe:8a:c7:18:d3:1c:
                    c8:0f
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Key Identifier: 
                13:B9:A4:D5:CF:DB:51:01:FB:A3:3C:A7:46:FE:05:D1:21:0C:23:4C
            X509v3 Basic Constraints: critical
                CA:TRUE
            Netscape Cert Type: 
                SSL Client, Object Signing CA
            X509v3 Key Usage: critical
                Digital Signature, Certificate Sign, CRL Sign
    Signature Algorithm: rsassaPss
    Signature Value:        
        Hash Algorithm: sha256
        Mask Algorithm: mgf1 with sha256
         Salt Length: 0x20
        Trailer Field: 0x01 (default)
        05:76:f9:a1:b4:25:2c:2e:8c:6e:8a:a2:67:a9:23:d4:75:66:
        b8:3c:4b:d5:f4:2d:20:87:84:4b:1c:bd:17:51:0b:44:7d:b5:
        6e:a0:d5:b1:7b:6e:03:7a:e2:ec:05:38:e8:d0:a6:b6:d5:0a:
        a5:54:fd:0f:30:c8:13:5d:70:a4:9f:96:ce:96:13:db:01:ba:
        a3:4f:92:ea:05:55:d4:6f:ae:33:64:fa:76:2c:5c:79:d8:18:
        02:40:5f:3d:91:37:b6:a1:5d:65:7d:9a:7c:f5:ce:5f:af:89:
        e8:a7:a4:8a:a2:4c:ec:11:13:28:c4:8a:eb:60:1e:28:7b:bd:
        e8:48:d9:24:c2:d9:a1:39:5f:14:14:e4:ee:f2:d4:25:2f:3e:
        2d:1a:ee:07:84:7b:d3:c7:1d:c7:86:9e:08:cd:96:4b:96:6d:
        e5:0f:92:cb:69:9c:67:25:51:d0:5e:92:af:dc:7a:a5:36:2e:
        cf:d7:84:83:ad:8f:47:6d:27:5e:89:36:41:98:01:b9:bc:6c:
        fc:fb:44:a7:75:84:3c:04:d3:4b:b7:e6:2b:3b:b7:9b:8a:95:
        b7:5e:5d:f2:d2:44:08:ef:a5:9a:ef:54:fd:68:d4:9b:6d:49:
        58:98:1a:db:24:cc:f3:63:20:88:0f:46:f4:b5:cf:29:12:75:
        0e:fd:a0:be
```
