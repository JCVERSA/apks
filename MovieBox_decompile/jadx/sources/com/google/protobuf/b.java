package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public abstract class b implements b1 {
    private static final o EMPTY_REGISTRY = o.getEmptyRegistry();

    private s0 checkMessageInitialized(s0 s0Var) throws InvalidProtocolBufferException {
        if (s0Var == null || s0Var.isInitialized()) {
            return s0Var;
        }
        throw newUninitializedMessageException(s0Var).asInvalidProtocolBufferException().setUnfinishedMessage(s0Var);
    }

    private UninitializedMessageException newUninitializedMessageException(s0 s0Var) {
        return s0Var instanceof a ? ((a) s0Var).newUninitializedMessageException() : new UninitializedMessageException(s0Var);
    }

    @Override
    public abstract Object parsePartialFrom(i iVar, o oVar) throws InvalidProtocolBufferException;

    @Override
    public s0 parseDelimitedFrom(InputStream inputStream, o oVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(parsePartialDelimitedFrom(inputStream, oVar));
    }

    @Override
    public s0 parsePartialDelimitedFrom(InputStream inputStream, o oVar) throws InvalidProtocolBufferException {
        try {
            int i10 = inputStream.read();
            if (i10 == -1) {
                return null;
            }
            return parsePartialFrom((InputStream) new a.AbstractC0428a.C0429a(inputStream, i.readRawVarint32(i10, inputStream)), oVar);
        } catch (IOException e10) {
            throw new InvalidProtocolBufferException(e10);
        }
    }

    @Override
    public s0 parseDelimitedFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return parseDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override
    public s0 parsePartialDelimitedFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return parsePartialDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override
    public s0 parsePartialFrom(i iVar) throws InvalidProtocolBufferException {
        return (s0) parsePartialFrom(iVar, EMPTY_REGISTRY);
    }

    @Override
    public s0 parsePartialFrom(ByteString byteString, o oVar) throws InvalidProtocolBufferException {
        i iVarNewCodedInput = byteString.newCodedInput();
        s0 s0Var = (s0) parsePartialFrom(iVarNewCodedInput, oVar);
        try {
            iVarNewCodedInput.checkLastTagWas(0);
            return s0Var;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(s0Var);
        }
    }

    @Override
    public s0 parseFrom(i iVar, o oVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized((s0) parsePartialFrom(iVar, oVar));
    }

    @Override
    public s0 parseFrom(i iVar) throws InvalidProtocolBufferException {
        return parseFrom(iVar, EMPTY_REGISTRY);
    }

    @Override
    public s0 parseFrom(ByteString byteString, o oVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(parsePartialFrom(byteString, oVar));
    }

    @Override
    public s0 parsePartialFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return parsePartialFrom(byteString, EMPTY_REGISTRY);
    }

    @Override
    public s0 parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return parseFrom(byteString, EMPTY_REGISTRY);
    }

    @Override
    public s0 parsePartialFrom(byte[] bArr, int i10, int i11, o oVar) throws InvalidProtocolBufferException {
        i iVarNewInstance = i.newInstance(bArr, i10, i11);
        s0 s0Var = (s0) parsePartialFrom(iVarNewInstance, oVar);
        try {
            iVarNewInstance.checkLastTagWas(0);
            return s0Var;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(s0Var);
        }
    }

    @Override
    public s0 parseFrom(ByteBuffer byteBuffer, o oVar) throws InvalidProtocolBufferException {
        i iVarNewInstance = i.newInstance(byteBuffer);
        s0 s0Var = (s0) parsePartialFrom(iVarNewInstance, oVar);
        try {
            iVarNewInstance.checkLastTagWas(0);
            return checkMessageInitialized(s0Var);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(s0Var);
        }
    }

    @Override
    public s0 parsePartialFrom(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
        return parsePartialFrom(bArr, i10, i11, EMPTY_REGISTRY);
    }

    @Override
    public s0 parsePartialFrom(byte[] bArr, o oVar) throws InvalidProtocolBufferException {
        return parsePartialFrom(bArr, 0, bArr.length, oVar);
    }

    @Override
    public s0 parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return parseFrom(byteBuffer, EMPTY_REGISTRY);
    }

    @Override
    public s0 parsePartialFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return parsePartialFrom(bArr, 0, bArr.length, EMPTY_REGISTRY);
    }

    @Override
    public s0 parseFrom(byte[] bArr, int i10, int i11, o oVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(parsePartialFrom(bArr, i10, i11, oVar));
    }

    @Override
    public s0 parsePartialFrom(InputStream inputStream, o oVar) throws InvalidProtocolBufferException {
        i iVarNewInstance = i.newInstance(inputStream);
        s0 s0Var = (s0) parsePartialFrom(iVarNewInstance, oVar);
        try {
            iVarNewInstance.checkLastTagWas(0);
            return s0Var;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(s0Var);
        }
    }

    @Override
    public s0 parseFrom(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
        return parseFrom(bArr, i10, i11, EMPTY_REGISTRY);
    }

    @Override
    public s0 parseFrom(byte[] bArr, o oVar) throws InvalidProtocolBufferException {
        return parseFrom(bArr, 0, bArr.length, oVar);
    }

    @Override
    public s0 parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return parseFrom(bArr, EMPTY_REGISTRY);
    }

    @Override
    public s0 parseFrom(InputStream inputStream, o oVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(parsePartialFrom(inputStream, oVar));
    }

    @Override
    public s0 parsePartialFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return parsePartialFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override
    public s0 parseFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return parseFrom(inputStream, EMPTY_REGISTRY);
    }
}
