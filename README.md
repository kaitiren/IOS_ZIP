IOS_ZIP_JSON
=============
The ios_zip is a compression and decompression using libz.dylib dynamic link library to the IOS;

How To Use?
===========
Import your IOS project libz.1.2.5.dylib dynamic link library, where the package source files LFCGzipUtillity, we import the "zlib.h" in LFCGzipUtillity.h, the realization of the compression and decompression static method;


Compression method :
    
    [+ (NSData *)gzipData:(NSData *)pUncompressedData;]
    
Decompression method:

    [+ (NSData *)uncompressZippedData:(NSData *)compressedData;]
    

Lincense
========
Copyright (c) 2012 kaitiren. All rights reserved.