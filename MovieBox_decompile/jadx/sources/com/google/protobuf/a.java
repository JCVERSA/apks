package com.google.protobuf;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class a implements s0 {
    protected int memoizedHashCode = 0;

    public static abstract class AbstractC0428a implements s0.a {
        @Deprecated
        protected static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
            addAll((Iterable) iterable, (List) collection);
        }

        private static <T> void addAllCheckingNulls(Iterable<T> iterable, List<? super T> list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size = list.size();
            for (T t10 : iterable) {
                if (t10 == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                list.add(t10);
            }
        }

        private String getReadingExceptionMessage(String str) {
            return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
        }

        protected static UninitializedMessageException newUninitializedMessageException(s0 s0Var) {
            return new UninitializedMessageException(s0Var);
        }

        @Override
        public abstract s0 build();

        @Override
        public abstract s0 buildPartial();

        @Override
        public abstract s0.a clear();

        @Override
        public abstract AbstractC0428a mo293clone();

        @Override
        public abstract s0 getDefaultInstanceForType();

        protected abstract AbstractC0428a internalMergeFrom(a aVar);

        @Override
        public abstract boolean isInitialized();

        @Override
        public boolean mergeDelimitedFrom(InputStream inputStream, o oVar) throws IOException {
            int i10 = inputStream.read();
            if (i10 == -1) {
                return false;
            }
            mergeFrom((InputStream) new C0429a(inputStream, i.readRawVarint32(i10, inputStream)), oVar);
            return true;
        }

        @Override
        public abstract AbstractC0428a mergeFrom(i iVar, o oVar) throws IOException;

        protected static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
            y.checkNotNull(iterable);
            if (!(iterable instanceof i0)) {
                if (iterable instanceof c1) {
                    list.addAll((Collection) iterable);
                    return;
                } else {
                    addAllCheckingNulls(iterable, list);
                    return;
                }
            }
            List<?> underlyingElements = ((i0) iterable).getUnderlyingElements();
            i0 i0Var = (i0) list;
            int size = list.size();
            for (Object obj : underlyingElements) {
                if (obj == null) {
                    String str = "Element at index " + (i0Var.size() - size) + " is null.";
                    for (int size2 = i0Var.size() - 1; size2 >= size; size2--) {
                        i0Var.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                if (obj instanceof ByteString) {
                    i0Var.add((ByteString) obj);
                } else {
                    i0Var.add((String) obj);
                }
            }
        }

        static final class C0429a extends FilterInputStream {
            private int limit;

            C0429a(InputStream inputStream, int i10) {
                super(inputStream);
                this.limit = i10;
            }

            @Override
            public int available() throws IOException {
                return Math.min(super.available(), this.limit);
            }

            @Override
            public int read() throws IOException {
                if (this.limit <= 0) {
                    return -1;
                }
                int i10 = super.read();
                if (i10 >= 0) {
                    this.limit--;
                }
                return i10;
            }

            @Override
            public long skip(long j10) throws IOException {
                int iSkip = (int) super.skip(Math.min(j10, this.limit));
                if (iSkip >= 0) {
                    this.limit -= iSkip;
                }
                return iSkip;
            }

            @Override
            public int read(byte[] bArr, int i10, int i11) throws IOException {
                int i12 = this.limit;
                if (i12 <= 0) {
                    return -1;
                }
                int i13 = super.read(bArr, i10, Math.min(i11, i12));
                if (i13 >= 0) {
                    this.limit -= i13;
                }
                return i13;
            }
        }

        @Override
        public boolean mergeDelimitedFrom(InputStream inputStream) throws IOException {
            return mergeDelimitedFrom(inputStream, o.getEmptyRegistry());
        }

        @Override
        public AbstractC0428a mergeFrom(i iVar) throws IOException {
            return mergeFrom(iVar, o.getEmptyRegistry());
        }

        @Override
        public AbstractC0428a mergeFrom(ByteString byteString) throws InvalidProtocolBufferException {
            try {
                i iVarNewCodedInput = byteString.newCodedInput();
                mergeFrom(iVarNewCodedInput);
                iVarNewCodedInput.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(getReadingExceptionMessage("ByteString"), e11);
            }
        }

        @Override
        public AbstractC0428a mergeFrom(ByteString byteString, o oVar) throws InvalidProtocolBufferException {
            try {
                i iVarNewCodedInput = byteString.newCodedInput();
                mergeFrom(iVarNewCodedInput, oVar);
                iVarNewCodedInput.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(getReadingExceptionMessage("ByteString"), e11);
            }
        }

        @Override
        public AbstractC0428a mergeFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return mergeFrom(bArr, 0, bArr.length);
        }

        @Override
        public AbstractC0428a mergeFrom(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            try {
                i iVarNewInstance = i.newInstance(bArr, i10, i11);
                mergeFrom(iVarNewInstance);
                iVarNewInstance.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(getReadingExceptionMessage("byte array"), e11);
            }
        }

        @Override
        public AbstractC0428a mergeFrom(byte[] bArr, o oVar) throws InvalidProtocolBufferException {
            return mergeFrom(bArr, 0, bArr.length, oVar);
        }

        @Override
        public AbstractC0428a mergeFrom(byte[] bArr, int i10, int i11, o oVar) throws InvalidProtocolBufferException {
            try {
                i iVarNewInstance = i.newInstance(bArr, i10, i11);
                mergeFrom(iVarNewInstance, oVar);
                iVarNewInstance.checkLastTagWas(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(getReadingExceptionMessage("byte array"), e11);
            }
        }

        @Override
        public AbstractC0428a mergeFrom(InputStream inputStream) throws IOException {
            i iVarNewInstance = i.newInstance(inputStream);
            mergeFrom(iVarNewInstance);
            iVarNewInstance.checkLastTagWas(0);
            return this;
        }

        @Override
        public AbstractC0428a mergeFrom(InputStream inputStream, o oVar) throws IOException {
            i iVarNewInstance = i.newInstance(inputStream);
            mergeFrom(iVarNewInstance, oVar);
            iVarNewInstance.checkLastTagWas(0);
            return this;
        }

        @Override
        public AbstractC0428a mergeFrom(s0 s0Var) {
            if (getDefaultInstanceForType().getClass().isInstance(s0Var)) {
                return internalMergeFrom((a) s0Var);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
    }

    @Deprecated
    protected static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
        AbstractC0428a.addAll((Iterable) iterable, (List) collection);
    }

    protected static void checkByteStringIsUtf8(ByteString byteString) throws IllegalArgumentException {
        if (!byteString.isValidUtf8()) {
            throw new IllegalArgumentException("Byte string is not UTF-8.");
        }
    }

    private String getSerializingExceptionMessage(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    @Override
    public abstract s0 getDefaultInstanceForType();

    int getMemoizedSerializedSize() {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract b1 getParserForType();

    @Override
    public abstract int getSerializedSize();

    int getSerializedSize(i1 i1Var) {
        int memoizedSerializedSize = getMemoizedSerializedSize();
        if (memoizedSerializedSize != -1) {
            return memoizedSerializedSize;
        }
        int serializedSize = i1Var.getSerializedSize(this);
        setMemoizedSerializedSize(serializedSize);
        return serializedSize;
    }

    @Override
    public abstract boolean isInitialized();

    @Override
    public abstract s0.a newBuilderForType();

    UninitializedMessageException newUninitializedMessageException() {
        return new UninitializedMessageException(this);
    }

    void setMemoizedSerializedSize(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract s0.a toBuilder();

    @Override
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bArr);
            writeTo(codedOutputStreamNewInstance);
            codedOutputStreamNewInstance.checkNoSpaceLeft();
            return bArr;
        } catch (IOException e10) {
            throw new RuntimeException(getSerializingExceptionMessage("byte array"), e10);
        }
    }

    @Override
    public ByteString toByteString() {
        try {
            ByteString.f fVarNewCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(fVarNewCodedBuilder.getCodedOutput());
            return fVarNewCodedBuilder.build();
        } catch (IOException e10) {
            throw new RuntimeException(getSerializingExceptionMessage("ByteString"), e10);
        }
    }

    @Override
    public void writeDelimitedTo(OutputStream outputStream) throws IOException {
        int serializedSize = getSerializedSize();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(outputStream, CodedOutputStream.computePreferredBufferSize(CodedOutputStream.computeUInt32SizeNoTag(serializedSize) + serializedSize));
        codedOutputStreamNewInstance.writeUInt32NoTag(serializedSize);
        writeTo(codedOutputStreamNewInstance);
        codedOutputStreamNewInstance.flush();
    }

    @Override
    public abstract void writeTo(CodedOutputStream codedOutputStream) throws IOException;

    @Override
    public void writeTo(OutputStream outputStream) throws IOException {
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(outputStream, CodedOutputStream.computePreferredBufferSize(getSerializedSize()));
        writeTo(codedOutputStreamNewInstance);
        codedOutputStreamNewInstance.flush();
    }

    protected static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
        AbstractC0428a.addAll((Iterable) iterable, (List) list);
    }
}
