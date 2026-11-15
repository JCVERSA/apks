package com.google.protobuf;

import java.io.IOException;

abstract class o1 {
    static final int DEFAULT_RECURSION_LIMIT = 100;
    private static volatile int recursionLimit = 100;

    o1() {
    }

    private final void mergeFrom(Object obj, h1 h1Var, int i10) throws IOException {
        while (h1Var.getFieldNumber() != Integer.MAX_VALUE && mergeOneFieldFrom(obj, h1Var, i10)) {
        }
    }

    abstract void addFixed32(Object obj, int i10, int i11);

    abstract void addFixed64(Object obj, int i10, long j10);

    abstract void addGroup(Object obj, int i10, Object obj2);

    abstract void addLengthDelimited(Object obj, int i10, ByteString byteString);

    abstract void addVarint(Object obj, int i10, long j10);

    abstract Object getBuilderFromMessage(Object obj);

    abstract Object getFromMessage(Object obj);

    abstract int getSerializedSize(Object obj);

    abstract int getSerializedSizeAsMessageSet(Object obj);

    abstract void makeImmutable(Object obj);

    abstract Object merge(Object obj, Object obj2);

    final boolean mergeOneFieldFrom(Object obj, h1 h1Var, int i10) throws IOException {
        int tag = h1Var.getTag();
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            addVarint(obj, tagFieldNumber, h1Var.readInt64());
            return true;
        }
        if (tagWireType == 1) {
            addFixed64(obj, tagFieldNumber, h1Var.readFixed64());
            return true;
        }
        if (tagWireType == 2) {
            addLengthDelimited(obj, tagFieldNumber, h1Var.readBytes());
            return true;
        }
        if (tagWireType != 3) {
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            addFixed32(obj, tagFieldNumber, h1Var.readFixed32());
            return true;
        }
        Object objNewBuilder = newBuilder();
        int iMakeTag = WireFormat.makeTag(tagFieldNumber, 4);
        int i11 = i10 + 1;
        if (i11 >= recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        mergeFrom(objNewBuilder, h1Var, i11);
        if (iMakeTag != h1Var.getTag()) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        addGroup(obj, tagFieldNumber, toImmutable(objNewBuilder));
        return true;
    }

    abstract Object newBuilder();

    abstract void setBuilderToMessage(Object obj, Object obj2);

    public void setRecursionLimit(int i10) {
        recursionLimit = i10;
    }

    abstract void setToMessage(Object obj, Object obj2);

    abstract boolean shouldDiscardUnknownFields(h1 h1Var);

    abstract Object toImmutable(Object obj);

    abstract void writeAsMessageSetTo(Object obj, Writer writer) throws IOException;

    abstract void writeTo(Object obj, Writer writer) throws IOException;
}
