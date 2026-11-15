package com.transsion.audiotagger.tag.id3;

import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.UnableToCreateFileException;
import com.transsion.audiotagger.audio.exceptions.UnableToModifyFileException;
import com.transsion.audiotagger.audio.exceptions.UnableToRenameFileException;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.mp3.MP3File;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.logging.FileSystemMessage;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.InvalidFrameException;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.Pair;
import com.transsion.audiotagger.tag.datatype.PairedTextEncodedStringNullTerminated;
import com.transsion.audiotagger.tag.id3.framebody.AbstractFrameBodyNumberTotal;
import com.transsion.audiotagger.tag.id3.framebody.AbstractFrameBodyPairs;
import com.transsion.audiotagger.tag.id3.framebody.AbstractFrameBodyTextInfo;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyAPIC;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyCOMM;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyEncrypted;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyIPLS;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyPIC;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyPOPM;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTIPL;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTMCL;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTXXX;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUFID;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUSLT;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUnsupported;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyWOAR;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyWXXX;
import com.transsion.audiotagger.tag.id3.valuepair.ID3NumberTotalFields;
import com.transsion.audiotagger.tag.id3.valuepair.StandardIPLSKey;
import com.transsion.audiotagger.tag.images.Artwork;
import com.transsion.audiotagger.tag.reference.Languages;
import com.transsion.audiotagger.tag.reference.PictureTypes;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.CharEncoding;

public abstract class AbstractID3v2Tag extends AbstractID3Tag implements Tag {
    public static final int FIELD_TAGID_LENGTH = 3;
    protected static final int FIELD_TAGID_POS = 0;
    public static final int FIELD_TAG_FLAG_LENGTH = 1;
    protected static final int FIELD_TAG_FLAG_POS = 5;
    public static final int FIELD_TAG_MAJOR_VERSION_LENGTH = 1;
    public static final int FIELD_TAG_MAJOR_VERSION_POS = 3;
    public static final int FIELD_TAG_MINOR_VERSION_LENGTH = 1;
    protected static final int FIELD_TAG_MINOR_VERSION_POS = 4;
    public static final int FIELD_TAG_SIZE_LENGTH = 4;
    protected static final int FIELD_TAG_SIZE_POS = 6;
    private static final long MAXIMUM_WRITABLE_CHUNK_SIZE = 10000000;
    public static final String TAGID = "ID3";
    public static final int TAG_HEADER_LENGTH = 10;
    public static final byte[] TAG_ID = {73, 68, 51};
    protected static final int TAG_SIZE_INCREMENT = 100;
    protected static final String TYPE_BODY = "body";
    protected static final String TYPE_DUPLICATEBYTES = "duplicateBytes";
    protected static final String TYPE_DUPLICATEFRAMEID = "duplicateFrameId";
    protected static final String TYPE_EMPTYFRAMEBYTES = "emptyFrameBytes";
    protected static final String TYPE_FILEREADSIZE = "fileReadSize";
    protected static final String TYPE_HEADER = "header";
    protected static final String TYPE_INVALIDFRAMES = "invalidFrames";
    private Long startLocationInFile = null;
    private Long endLocationInFile = null;
    public HashMap<String, Object> frameMap = null;
    public HashMap<String, Object> encryptedFrameMap = null;
    protected String duplicateFrameId = "";
    protected int duplicateBytes = 0;
    protected int emptyFrameBytes = 0;
    protected int fileReadSize = 0;
    protected int invalidFrames = 0;

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$com$transsion$audiotagger$tag$FieldKey;

        static {
            int[] iArr = new int[FieldKey.values().length];
            $SwitchMap$com$transsion$audiotagger$tag$FieldKey = iArr;
            try {
                iArr[FieldKey.TRACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$FieldKey[FieldKey.TRACK_TOTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$FieldKey[FieldKey.DISC_NO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$FieldKey[FieldKey.DISC_TOTAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$FieldKey[FieldKey.MOVEMENT_NO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$FieldKey[FieldKey.MOVEMENT_TOTAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class FrameAndSubId {
        private String frameId;
        private FieldKey genericKey;
        private String subId;

        public FrameAndSubId(FieldKey fieldKey, String str, String str2) {
            this.genericKey = fieldKey;
            this.frameId = str;
            this.subId = str2;
        }

        public String getFrameId() {
            return this.frameId;
        }

        public FieldKey getGenericKey() {
            return this.genericKey;
        }

        public String getSubId() {
            return this.subId;
        }
    }

    public AbstractID3v2Tag() {
    }

    private void addNewFrameOrAddField(List<TagField> list, HashMap map, AbstractID3v2Frame abstractID3v2Frame, AbstractID3v2Frame abstractID3v2Frame2) {
        ArrayList arrayList = new ArrayList();
        if (abstractID3v2Frame != null) {
            arrayList.add(abstractID3v2Frame);
        } else {
            arrayList.addAll(list);
        }
        if (abstractID3v2Frame2.getBody() instanceof FrameBodyTXXX) {
            FrameBodyTXXX frameBodyTXXX = (FrameBodyTXXX) abstractID3v2Frame2.getBody();
            ListIterator listIterator = arrayList.listIterator();
            while (listIterator.hasNext()) {
                FrameBodyTXXX frameBodyTXXX2 = (FrameBodyTXXX) ((AbstractID3v2Frame) listIterator.next()).getBody();
                if (frameBodyTXXX.getDescription().equals(frameBodyTXXX2.getDescription())) {
                    frameBodyTXXX2.addTextValue(frameBodyTXXX.getText());
                    return;
                }
            }
            addNewFrameToMap(list, map, abstractID3v2Frame, abstractID3v2Frame2);
            return;
        }
        if (abstractID3v2Frame2.getBody() instanceof FrameBodyWXXX) {
            FrameBodyWXXX frameBodyWXXX = (FrameBodyWXXX) abstractID3v2Frame2.getBody();
            ListIterator listIterator2 = arrayList.listIterator();
            while (listIterator2.hasNext()) {
                FrameBodyWXXX frameBodyWXXX2 = (FrameBodyWXXX) ((AbstractID3v2Frame) listIterator2.next()).getBody();
                if (frameBodyWXXX.getDescription().equals(frameBodyWXXX2.getDescription())) {
                    frameBodyWXXX2.addUrlLink(frameBodyWXXX.getUrlLink());
                    return;
                }
            }
            addNewFrameToMap(list, map, abstractID3v2Frame, abstractID3v2Frame2);
            return;
        }
        if (abstractID3v2Frame2.getBody() instanceof AbstractFrameBodyTextInfo) {
            ((AbstractFrameBodyTextInfo) abstractID3v2Frame.getBody()).addTextValue(((AbstractFrameBodyTextInfo) abstractID3v2Frame2.getBody()).getText());
            return;
        }
        if (abstractID3v2Frame2.getBody() instanceof AbstractFrameBodyPairs) {
            ((AbstractFrameBodyPairs) abstractID3v2Frame.getBody()).addPair(((AbstractFrameBodyPairs) abstractID3v2Frame2.getBody()).getText());
            return;
        }
        if (!(abstractID3v2Frame2.getBody() instanceof AbstractFrameBodyNumberTotal)) {
            addNewFrameToMap(list, map, abstractID3v2Frame, abstractID3v2Frame2);
            return;
        }
        AbstractFrameBodyNumberTotal abstractFrameBodyNumberTotal = (AbstractFrameBodyNumberTotal) abstractID3v2Frame2.getBody();
        AbstractFrameBodyNumberTotal abstractFrameBodyNumberTotal2 = (AbstractFrameBodyNumberTotal) abstractID3v2Frame.getBody();
        if (abstractFrameBodyNumberTotal.getNumber() != null && abstractFrameBodyNumberTotal.getNumber().intValue() > 0) {
            abstractFrameBodyNumberTotal2.setNumber(abstractFrameBodyNumberTotal.getNumberAsText());
        }
        if (abstractFrameBodyNumberTotal.getTotal() == null || abstractFrameBodyNumberTotal.getTotal().intValue() <= 0) {
            return;
        }
        abstractFrameBodyNumberTotal2.setTotal(abstractFrameBodyNumberTotal.getTotalAsText());
    }

    private void addNewFrameToMap(List<TagField> list, HashMap map, AbstractID3v2Frame abstractID3v2Frame, AbstractID3v2Frame abstractID3v2Frame2) {
        if (list.size() != 0) {
            list.add(abstractID3v2Frame2);
            return;
        }
        list.add(abstractID3v2Frame);
        list.add(abstractID3v2Frame2);
        map.put(abstractID3v2Frame2.getId(), list);
    }

    private void deleteNumberTotalFrame(FrameAndSubId frameAndSubId, FieldKey fieldKey, FieldKey fieldKey2, boolean z) {
        if (z) {
            if (getFirst(fieldKey2).length() == 0) {
                doDeleteTagField(frameAndSubId);
                return;
            } else {
                ((AbstractFrameBodyNumberTotal) ((AbstractID3v2Frame) getFrame(frameAndSubId.getFrameId())).getBody()).setNumber((Integer) 0);
                return;
            }
        }
        if (getFirst(fieldKey).length() == 0) {
            doDeleteTagField(frameAndSubId);
        } else {
            ((AbstractFrameBodyNumberTotal) ((AbstractID3v2Frame) getFrame(frameAndSubId.getFrameId())).getBody()).setTotal((Integer) 0);
        }
    }

    private String getTextValueForFrame(AbstractID3v2Frame abstractID3v2Frame) {
        return abstractID3v2Frame.getBody().getUserFriendlyValue();
    }

    public static long getV2TagSizeIfExists(File file) throws IOException {
        FileChannel channel = null;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                channel = fileInputStream.getChannel();
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(10);
                channel.read(byteBufferAllocate);
                byteBufferAllocate.flip();
                if (byteBufferAllocate.limit() < 10) {
                    fileInputStream.close();
                    channel.close();
                    return 0L;
                }
                fileInputStream.close();
                channel.close();
                byte[] bArr = new byte[3];
                byteBufferAllocate.get(bArr, 0, 3);
                if (!Arrays.equals(bArr, TAG_ID)) {
                    return 0L;
                }
                byte b = byteBufferAllocate.get();
                if (b != 2 && b != 3 && b != 4) {
                    return 0L;
                }
                byteBufferAllocate.get();
                byteBufferAllocate.get();
                return ID3SyncSafeInteger.bufferToValue(byteBufferAllocate) + 10;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            if (channel != null) {
                channel.close();
            }
            throw th3;
        }
    }

    private static boolean isID3V2Header(RandomAccessFile randomAccessFile) throws IOException {
        long filePointer = randomAccessFile.getFilePointer();
        byte[] bArr = new byte[3];
        randomAccessFile.read(bArr);
        randomAccessFile.seek(filePointer);
        return Arrays.equals(bArr, TAG_ID);
    }

    public static boolean isId3Tag(RandomAccessFile randomAccessFile) throws IOException {
        if (!isID3V2Header(randomAccessFile)) {
            return false;
        }
        byte[] bArr = new byte[4];
        randomAccessFile.seek(randomAccessFile.getFilePointer() + 6);
        randomAccessFile.read(bArr);
        randomAccessFile.seek(ID3SyncSafeInteger.bufferToValue(ByteBuffer.wrap(bArr)) + 10);
        return true;
    }

    private void replaceFile(File file, File file2) throws IOException {
        File file3 = new File(file.getAbsoluteFile().getParentFile().getPath(), AudioFile.getBaseFilename(file) + ".old");
        int i = 1;
        while (file3.exists()) {
            file3 = new File(file.getAbsoluteFile().getParentFile().getPath(), AudioFile.getBaseFilename(file) + ".old" + i);
            i++;
        }
        if (!file.renameTo(file3)) {
            Logger logger = AbstractID3Tag.logger;
            ErrorMessage errorMessage = ErrorMessage.GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_FILE_TO_BACKUP;
            logger.warning(errorMessage.getMsg(file.getAbsolutePath(), file3.getName()));
            file2.delete();
            throw new UnableToRenameFileException(errorMessage.getMsg(file.getAbsolutePath(), file3.getName()));
        }
        if (file2.renameTo(file)) {
            if (file3.delete()) {
                return;
            }
            AbstractID3Tag.logger.warning(ErrorMessage.GENERAL_WRITE_WARNING_UNABLE_TO_DELETE_BACKUP_FILE.getMsg(file3.getAbsolutePath()));
            return;
        }
        if (!file2.exists()) {
            AbstractID3Tag.logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_NEW_FILE_DOESNT_EXIST.getMsg(file2.getAbsolutePath()));
        }
        if (!file3.renameTo(file)) {
            AbstractID3Tag.logger.warning(ErrorMessage.GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_BACKUP_TO_ORIGINAL.getMsg(file3.getAbsolutePath(), file.getName()));
        }
        Logger logger2 = AbstractID3Tag.logger;
        ErrorMessage errorMessage2 = ErrorMessage.GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE;
        logger2.warning(errorMessage2.getMsg(file.getAbsolutePath(), file2.getName()));
        file2.delete();
        throw new UnableToRenameFileException(errorMessage2.getMsg(file.getAbsolutePath(), file2.getName()));
    }

    private void writeFramesToBufferStream(Map map, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        TreeSet treeSet = new TreeSet(getPreferredFrameOrderComparator());
        treeSet.addAll(map.keySet());
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            Object obj = map.get((String) it.next());
            if (obj instanceof AbstractID3v2Frame) {
                AbstractID3v2Frame abstractID3v2Frame = (AbstractID3v2Frame) obj;
                abstractID3v2Frame.setLoggingFilename(getLoggingFilename());
                abstractID3v2Frame.write(byteArrayOutputStream);
            } else if (obj instanceof AggregatedFrame) {
                for (AbstractID3v2Frame abstractID3v2Frame2 : ((AggregatedFrame) obj).getFrames()) {
                    abstractID3v2Frame2.setLoggingFilename(getLoggingFilename());
                    abstractID3v2Frame2.write(byteArrayOutputStream);
                }
            } else {
                for (AbstractID3v2Frame abstractID3v2Frame3 : (List) obj) {
                    abstractID3v2Frame3.setLoggingFilename(getLoggingFilename());
                    abstractID3v2Frame3.write(byteArrayOutputStream);
                }
            }
        }
    }

    @Override
    public void addField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        addField(createField(fieldKey, strArr));
    }

    public abstract void addFrame(AbstractID3v2Frame abstractID3v2Frame);

    /* JADX WARN: Code duplicated, block: B:102:0x01bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x01aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:? A[Catch: all -> 0x0170, SYNTHETIC, TRY_LEAVE, TryCatch #9 {all -> 0x0170, blocks: (B:39:0x016c, B:65:0x01b3, B:64:0x01b0, B:60:0x01aa), top: B:113:0x0055, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:127:? A[Catch: all -> 0x0186, SYNTHETIC, TRY_LEAVE, TryCatch #3 {all -> 0x0186, blocks: (B:43:0x0173, B:74:0x01c5, B:73:0x01c2, B:69:0x01bc), top: B:107:0x0051, inners: #0 }] */
    public void adjustPadding(File file, int i, long j) throws Throwable {
        FileInputStream fileInputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        Throwable th2;
        Throwable th3;
        Throwable th4;
        FileInputStream fileInputStream2;
        FileOutputStream fileOutputStream2;
        AbstractID3Tag.logger.finer("Need to move audio file to accommodate tag");
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[i]);
        try {
            File fileCreateTempFile = File.createTempFile(Utils.getBaseFilenameForTempFile(file), ".new", file.getParentFile());
            AbstractID3Tag.logger.finest("Created temp file:" + fileCreateTempFile.getName() + " for " + file.getName());
            try {
                FileInputStream fileInputStream3 = new FileInputStream(file);
                try {
                    try {
                        FileOutputStream fileOutputStream3 = new FileOutputStream(fileCreateTempFile);
                        try {
                            try {
                                FileChannel channel = fileOutputStream3.getChannel();
                                try {
                                    try {
                                        FileChannel channel2 = fileInputStream3.getChannel();
                                        try {
                                            long jWrite = channel.write(byteBufferWrap);
                                            AbstractID3Tag.logger.finer("Copying:" + (file.length() - j) + "bytes");
                                            long length = file.length() - j;
                                            if (length <= MAXIMUM_WRITABLE_CHUNK_SIZE) {
                                                try {
                                                    channel2.position(j);
                                                    long jTransferFrom = channel.transferFrom(channel2, i, length);
                                                    AbstractID3Tag.logger.finer("Written padding:" + jWrite + " Data:" + jTransferFrom);
                                                    if (jTransferFrom != length) {
                                                        throw new RuntimeException(ErrorMessage.MP3_UNABLE_TO_ADJUST_PADDING.getMsg(Long.valueOf(length), Long.valueOf(jTransferFrom)));
                                                    }
                                                    fileInputStream2 = fileInputStream3;
                                                    fileOutputStream2 = fileOutputStream3;
                                                } catch (Throwable th5) {
                                                    th4 = th5;
                                                    fileInputStream = fileInputStream3;
                                                    fileOutputStream = fileOutputStream3;
                                                    if (channel2 != null) {
                                                        throw th4;
                                                    }
                                                    try {
                                                        channel2.close();
                                                        throw th4;
                                                    } catch (Throwable th6) {
                                                        th4.addSuppressed(th6);
                                                        throw th4;
                                                    }
                                                }
                                            } else {
                                                long j2 = jWrite;
                                                long j3 = length / MAXIMUM_WRITABLE_CHUNK_SIZE;
                                                long j4 = length % MAXIMUM_WRITABLE_CHUNK_SIZE;
                                                long jTransferTo = 0;
                                                int i2 = 0;
                                                while (true) {
                                                    long j5 = i2;
                                                    if (j5 >= j3) {
                                                        break;
                                                    }
                                                    fileInputStream = fileInputStream3;
                                                    fileOutputStream = fileOutputStream3;
                                                    long j6 = j2;
                                                    int i3 = i2;
                                                    try {
                                                        jTransferTo += channel2.transferTo(j + (j5 * MAXIMUM_WRITABLE_CHUNK_SIZE), MAXIMUM_WRITABLE_CHUNK_SIZE, channel);
                                                        i2 = i3 + 1;
                                                        j2 = j6;
                                                        fileInputStream3 = fileInputStream;
                                                        fileOutputStream3 = fileOutputStream;
                                                    } catch (Throwable th7) {
                                                        th = th7;
                                                        th4 = th;
                                                        if (channel2 != null) {
                                                            throw th4;
                                                        }
                                                        channel2.close();
                                                        throw th4;
                                                    }
                                                }
                                                fileInputStream2 = fileInputStream3;
                                                fileOutputStream2 = fileOutputStream3;
                                                long jTransferTo2 = jTransferTo + channel2.transferTo(j + (j3 * MAXIMUM_WRITABLE_CHUNK_SIZE), j4, channel);
                                                AbstractID3Tag.logger.finer("Written padding:" + j2 + " Data:" + jTransferTo2);
                                                if (jTransferTo2 != length) {
                                                    throw new RuntimeException(ErrorMessage.MP3_UNABLE_TO_ADJUST_PADDING.getMsg(Long.valueOf(length), Long.valueOf(jTransferTo2)));
                                                }
                                            }
                                            long jLastModified = file.lastModified();
                                            if (channel2 != null && channel2.isOpen()) {
                                                channel2.close();
                                            }
                                            if (channel.isOpen()) {
                                                channel.close();
                                            }
                                            replaceFile(file, fileCreateTempFile);
                                            fileCreateTempFile.setLastModified(jLastModified);
                                            if (channel2 != null) {
                                                channel2.close();
                                            }
                                            channel.close();
                                            fileOutputStream2.close();
                                            fileInputStream2.close();
                                        } catch (Throwable th8) {
                                            th = th8;
                                            fileInputStream = fileInputStream3;
                                            fileOutputStream = fileOutputStream3;
                                        }
                                    } catch (Throwable th9) {
                                        th = th9;
                                        th3 = th;
                                        if (channel != null) {
                                            throw th3;
                                        }
                                        try {
                                            channel.close();
                                            throw th3;
                                        } catch (Throwable th10) {
                                            th3.addSuppressed(th10);
                                            throw th3;
                                        }
                                    }
                                } catch (Throwable th11) {
                                    th = th11;
                                    fileInputStream = fileInputStream3;
                                    fileOutputStream = fileOutputStream3;
                                    th3 = th;
                                    if (channel != null) {
                                        throw th3;
                                    }
                                    channel.close();
                                    throw th3;
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                th2 = th;
                                try {
                                    fileOutputStream.close();
                                    throw th2;
                                } catch (Throwable th13) {
                                    th2.addSuppressed(th13);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th14) {
                            th = th14;
                            fileInputStream = fileInputStream3;
                            fileOutputStream = fileOutputStream3;
                            th2 = th;
                            fileOutputStream.close();
                            throw th2;
                        }
                    } catch (Throwable th15) {
                        th = th15;
                        th = th;
                        try {
                            fileInputStream.close();
                            throw th;
                        } catch (Throwable th16) {
                            th.addSuppressed(th16);
                            throw th;
                        }
                    }
                } catch (Throwable th17) {
                    th = th17;
                    fileInputStream = fileInputStream3;
                    th = th;
                    fileInputStream.close();
                    throw th;
                }
            } catch (UnableToRenameFileException e) {
                fileCreateTempFile.delete();
                throw e;
            } catch (FileNotFoundException e2) {
                AbstractID3Tag.logger.log(Level.SEVERE, e2.getMessage(), (Throwable) e2);
                Logger logger = AbstractID3Tag.logger;
                ErrorMessage errorMessage = ErrorMessage.GENERAL_WRITE_FAILED_TO_MODIFY_TEMPORARY_FILE_IN_FOLDER;
                logger.severe(errorMessage.getMsg(file.getName(), file.getParentFile().getPath()));
                throw new UnableToModifyFileException(errorMessage.getMsg(file.getName(), file.getParentFile().getPath()));
            }
        } catch (IOException e3) {
            AbstractID3Tag.logger.log(Level.SEVERE, e3.getMessage(), (Throwable) e3);
            if (e3.getMessage().equals(FileSystemMessage.ACCESS_IS_DENIED.getMsg())) {
                Logger logger2 = AbstractID3Tag.logger;
                ErrorMessage errorMessage2 = ErrorMessage.GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER;
                logger2.severe(errorMessage2.getMsg(file.getName(), file.getParentFile().getPath()));
                throw new UnableToCreateFileException(errorMessage2.getMsg(file.getName(), file.getParentFile().getPath()));
            }
            Logger logger3 = AbstractID3Tag.logger;
            ErrorMessage errorMessage3 = ErrorMessage.GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER;
            logger3.severe(errorMessage3.getMsg(file.getName(), file.getParentFile().getPath()));
            throw new UnableToCreateFileException(errorMessage3.getMsg(file.getName(), file.getParentFile().getPath()));
        }
    }

    public int calculateTagSize(int i, int i2) {
        return i <= i2 ? i2 : i + 100;
    }

    public abstract List<AbstractID3v2Frame> convertFrame(AbstractID3v2Frame abstractID3v2Frame) throws InvalidFrameException;

    public final void copyFrameIntoMap(String str, AbstractID3v2Frame abstractID3v2Frame) {
        if (!this.frameMap.containsKey(abstractID3v2Frame.getIdentifier())) {
            this.frameMap.put(abstractID3v2Frame.getIdentifier(), abstractID3v2Frame);
            return;
        }
        Object obj = this.frameMap.get(abstractID3v2Frame.getIdentifier());
        if (obj instanceof AbstractID3v2Frame) {
            processDuplicateFrame(abstractID3v2Frame, (AbstractID3v2Frame) obj);
            return;
        }
        if (obj instanceof AggregatedFrame) {
            AbstractID3Tag.logger.severe("Duplicated Aggregate Frame, ignoring:" + str);
            return;
        }
        if (obj instanceof List) {
            ((List) obj).add(abstractID3v2Frame);
            return;
        }
        AbstractID3Tag.logger.severe("Unknown frame class:discarding:" + obj.getClass());
    }

    public void copyFrames(AbstractID3v2Tag abstractID3v2Tag) {
        this.frameMap = new LinkedHashMap();
        this.encryptedFrameMap = new LinkedHashMap();
        Iterator<String> it = abstractID3v2Tag.frameMap.keySet().iterator();
        while (it.hasNext()) {
            Object obj = abstractID3v2Tag.frameMap.get(it.next());
            if (obj instanceof AbstractID3v2Frame) {
                addFrame((AbstractID3v2Frame) obj);
            } else if (obj instanceof TyerTdatAggregatedFrame) {
                Iterator<AbstractID3v2Frame> it2 = ((TyerTdatAggregatedFrame) obj).getFrames().iterator();
                while (it2.hasNext()) {
                    addFrame(it2.next());
                }
            } else if (obj instanceof ArrayList) {
                Iterator it3 = ((ArrayList) obj).iterator();
                while (it3.hasNext()) {
                    addFrame((AbstractID3v2Frame) it3.next());
                }
            }
        }
    }

    public void copyPrimitives(AbstractID3v2Tag abstractID3v2Tag) {
        AbstractID3Tag.logger.config("Copying Primitives");
        this.duplicateFrameId = abstractID3v2Tag.duplicateFrameId;
        this.duplicateBytes = abstractID3v2Tag.duplicateBytes;
        this.emptyFrameBytes = abstractID3v2Tag.emptyFrameBytes;
        this.fileReadSize = abstractID3v2Tag.fileReadSize;
        this.invalidFrames = abstractID3v2Tag.invalidFrames;
    }

    @Override
    public TagField createCompilationField(boolean z) throws FieldDataInvalidException, KeyNotFoundException {
        return z ? createField(FieldKey.IS_COMPILATION, "1") : createField(FieldKey.IS_COMPILATION, "0");
    }

    @Override
    public TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        String str;
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        if (strArr == null || (str = strArr[0]) == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        FrameAndSubId frameAndSubIdFromGenericKey = getFrameAndSubIdFromGenericKey(fieldKey);
        if (ID3NumberTotalFields.isNumber(fieldKey)) {
            AbstractID3v2Frame abstractID3v2FrameCreateFrame = createFrame(frameAndSubIdFromGenericKey.getFrameId());
            ((AbstractFrameBodyNumberTotal) abstractID3v2FrameCreateFrame.getBody()).setNumber(str);
            return abstractID3v2FrameCreateFrame;
        }
        if (!ID3NumberTotalFields.isTotal(fieldKey)) {
            return doCreateTagField(frameAndSubIdFromGenericKey, strArr);
        }
        AbstractID3v2Frame abstractID3v2FrameCreateFrame2 = createFrame(frameAndSubIdFromGenericKey.getFrameId());
        ((AbstractFrameBodyNumberTotal) abstractID3v2FrameCreateFrame2.getBody()).setTotal(str);
        return abstractID3v2FrameCreateFrame2;
    }

    public abstract AbstractID3v2Frame createFrame(String str);

    public TagField createLinkedArtworkField(String str) {
        AbstractID3v2Frame abstractID3v2FrameCreateFrame = createFrame(getFrameAndSubIdFromGenericKey(FieldKey.COVER_ART).getFrameId());
        if (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyAPIC) {
            FrameBodyAPIC frameBodyAPIC = (FrameBodyAPIC) abstractID3v2FrameCreateFrame.getBody();
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_DATA, str.getBytes(StandardCharsets.ISO_8859_1));
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_PICTURE_TYPE, PictureTypes.DEFAULT_ID);
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_MIME_TYPE, "-->");
            frameBodyAPIC.setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
        } else if (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyPIC) {
            FrameBodyPIC frameBodyPIC = (FrameBodyPIC) abstractID3v2FrameCreateFrame.getBody();
            frameBodyPIC.setObjectValue(DataTypes.OBJ_PICTURE_DATA, str.getBytes(StandardCharsets.ISO_8859_1));
            frameBodyPIC.setObjectValue(DataTypes.OBJ_PICTURE_TYPE, PictureTypes.DEFAULT_ID);
            frameBodyPIC.setObjectValue(DataTypes.OBJ_IMAGE_FORMAT, "-->");
            frameBodyPIC.setObjectValue(DataTypes.OBJ_DESCRIPTION, "");
        }
        return abstractID3v2FrameCreateFrame;
    }

    public void createStructure() {
        createStructureHeader();
        createStructureBody();
    }

    public void createStructureBody() {
        MP3File.getStructureFormatter().openHeadingElement("body", "");
        for (Object obj : this.frameMap.values()) {
            if (obj instanceof AbstractID3v2Frame) {
                ((AbstractID3v2Frame) obj).createStructure();
            } else {
                ListIterator listIterator = ((ArrayList) obj).listIterator();
                while (listIterator.hasNext()) {
                    ((AbstractID3v2Frame) listIterator.next()).createStructure();
                }
            }
        }
        MP3File.getStructureFormatter().closeHeadingElement("body");
    }

    public void createStructureHeader() {
        MP3File.getStructureFormatter().addElement(TYPE_DUPLICATEBYTES, this.duplicateBytes);
        MP3File.getStructureFormatter().addElement(TYPE_DUPLICATEFRAMEID, this.duplicateFrameId);
        MP3File.getStructureFormatter().addElement(TYPE_EMPTYFRAMEBYTES, this.emptyFrameBytes);
        MP3File.getStructureFormatter().addElement(TYPE_FILEREADSIZE, this.fileReadSize);
        MP3File.getStructureFormatter().addElement(TYPE_INVALIDFRAMES, this.invalidFrames);
    }

    @Override
    public void delete(RandomAccessFile randomAccessFile) throws IOException {
        byte[] bArr = new byte[3];
        FileChannel channel = randomAccessFile.getChannel();
        channel.position();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(10);
        channel.read(byteBufferAllocate, 0L);
        byteBufferAllocate.flip();
        if (seek(byteBufferAllocate)) {
            randomAccessFile.seek(0L);
            randomAccessFile.write(bArr);
        }
    }

    @Override
    public void deleteArtworkField() throws KeyNotFoundException {
        deleteField(FieldKey.COVER_ART);
    }

    @Override
    public void deleteField(FieldKey fieldKey) throws KeyNotFoundException {
        FrameAndSubId frameAndSubIdFromGenericKey = getFrameAndSubIdFromGenericKey(fieldKey);
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        switch (AnonymousClass2.$SwitchMap$com$transsion$audiotagger$tag$FieldKey[fieldKey.ordinal()]) {
            case 1:
                deleteNumberTotalFrame(frameAndSubIdFromGenericKey, FieldKey.TRACK, FieldKey.TRACK_TOTAL, true);
                return;
            case 2:
                deleteNumberTotalFrame(frameAndSubIdFromGenericKey, FieldKey.TRACK, FieldKey.TRACK_TOTAL, false);
                return;
            case 3:
                deleteNumberTotalFrame(frameAndSubIdFromGenericKey, FieldKey.DISC_NO, FieldKey.DISC_TOTAL, true);
                return;
            case 4:
                deleteNumberTotalFrame(frameAndSubIdFromGenericKey, FieldKey.DISC_NO, FieldKey.DISC_TOTAL, false);
                return;
            case 5:
                deleteNumberTotalFrame(frameAndSubIdFromGenericKey, FieldKey.MOVEMENT_NO, FieldKey.MOVEMENT_TOTAL, true);
                return;
            case 6:
                deleteNumberTotalFrame(frameAndSubIdFromGenericKey, FieldKey.MOVEMENT_NO, FieldKey.MOVEMENT_TOTAL, false);
                return;
            default:
                doDeleteTagField(frameAndSubIdFromGenericKey);
                return;
        }
    }

    public TagField doCreateTagField(FrameAndSubId frameAndSubId, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        String str = strArr[0];
        AbstractID3v2Frame abstractID3v2FrameCreateFrame = createFrame(frameAndSubId.getFrameId());
        if (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyUFID) {
            ((FrameBodyUFID) abstractID3v2FrameCreateFrame.getBody()).setOwner(frameAndSubId.getSubId());
            try {
                ((FrameBodyUFID) abstractID3v2FrameCreateFrame.getBody()).setUniqueIdentifier(str.getBytes(CharEncoding.ISO_8859_1));
            } catch (UnsupportedEncodingException unused) {
                throw new RuntimeException("When encoding UFID charset ISO-8859-1 was deemed unsupported");
            }
        } else if (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyTXXX) {
            ((FrameBodyTXXX) abstractID3v2FrameCreateFrame.getBody()).setDescription(frameAndSubId.getSubId());
            ((FrameBodyTXXX) abstractID3v2FrameCreateFrame.getBody()).setText(str);
        } else if (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyWXXX) {
            ((FrameBodyWXXX) abstractID3v2FrameCreateFrame.getBody()).setDescription(frameAndSubId.getSubId());
            ((FrameBodyWXXX) abstractID3v2FrameCreateFrame.getBody()).setUrlLink(str);
        } else if (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyCOMM) {
            if (frameAndSubId.getSubId() != null) {
                ((FrameBodyCOMM) abstractID3v2FrameCreateFrame.getBody()).setDescription(frameAndSubId.getSubId());
                if (((FrameBodyCOMM) abstractID3v2FrameCreateFrame.getBody()).isMediaMonkeyFrame()) {
                    ((FrameBodyCOMM) abstractID3v2FrameCreateFrame.getBody()).setLanguage(Languages.MEDIA_MONKEY_ID);
                }
            }
            ((FrameBodyCOMM) abstractID3v2FrameCreateFrame.getBody()).setText(str);
        } else if (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyUSLT) {
            ((FrameBodyUSLT) abstractID3v2FrameCreateFrame.getBody()).setDescription("");
            ((FrameBodyUSLT) abstractID3v2FrameCreateFrame.getBody()).setLyric(str);
        } else if (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyWOAR) {
            ((FrameBodyWOAR) abstractID3v2FrameCreateFrame.getBody()).setUrlLink(str);
        } else if (abstractID3v2FrameCreateFrame.getBody() instanceof AbstractFrameBodyTextInfo) {
            ((AbstractFrameBodyTextInfo) abstractID3v2FrameCreateFrame.getBody()).setText(str);
        } else if (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyPOPM) {
            ((FrameBodyPOPM) abstractID3v2FrameCreateFrame.getBody()).parseString(str);
        } else if (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyIPLS) {
            if (frameAndSubId.getSubId() != null) {
                ((FrameBodyIPLS) abstractID3v2FrameCreateFrame.getBody()).addPair(frameAndSubId.getSubId(), str);
            } else if (strArr.length >= 2) {
                ((FrameBodyIPLS) abstractID3v2FrameCreateFrame.getBody()).addPair(strArr[0], strArr[1]);
            } else {
                ((FrameBodyIPLS) abstractID3v2FrameCreateFrame.getBody()).addPair(strArr[0]);
            }
        } else if (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyTIPL) {
            ((FrameBodyTIPL) abstractID3v2FrameCreateFrame.getBody()).addPair(frameAndSubId.getSubId(), str);
        } else {
            if (!(abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyTMCL)) {
                if ((abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyAPIC) || (abstractID3v2FrameCreateFrame.getBody() instanceof FrameBodyPIC)) {
                    throw new UnsupportedOperationException(ErrorMessage.ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD.getMsg());
                }
                throw new FieldDataInvalidException("Field with key of:" + frameAndSubId.getFrameId() + ":does not accept cannot parse data:" + str);
            }
            if (strArr.length >= 2) {
                ((FrameBodyTMCL) abstractID3v2FrameCreateFrame.getBody()).addPair(strArr[0], strArr[1]);
            } else {
                ((FrameBodyTMCL) abstractID3v2FrameCreateFrame.getBody()).addPair(strArr[0]);
            }
        }
        return abstractID3v2FrameCreateFrame;
    }

    public void doDeleteTagField(FrameAndSubId frameAndSubId) throws KeyNotFoundException {
        if (frameAndSubId.getSubId() == null) {
            if (frameAndSubId.getGenericKey() == null || !(frameAndSubId.getGenericKey() == FieldKey.PERFORMER || frameAndSubId.getGenericKey() == FieldKey.INVOLVED_PERSON)) {
                if (frameAndSubId.getSubId() == null) {
                    removeFrame(frameAndSubId.getFrameId());
                    return;
                }
                return;
            }
            ListIterator<TagField> listIterator = getFields(frameAndSubId.getFrameId()).listIterator();
            while (listIterator.hasNext()) {
                AbstractTagFrameBody body = ((AbstractID3v2Frame) listIterator.next()).getBody();
                if (body instanceof AbstractFrameBodyPairs) {
                    PairedTextEncodedStringNullTerminated.ValuePairs pairing = ((AbstractFrameBodyPairs) body).getPairing();
                    ListIterator<Pair> listIterator2 = pairing.getMapping().listIterator();
                    while (listIterator2.hasNext()) {
                        if (!StandardIPLSKey.isKey(listIterator2.next().getKey())) {
                            listIterator2.remove();
                        }
                    }
                    if (pairing.getMapping().size() == 0) {
                        removeFrame(frameAndSubId.getFrameId());
                    }
                }
            }
            return;
        }
        List<TagField> fields = getFields(frameAndSubId.getFrameId());
        ListIterator<TagField> listIterator3 = fields.listIterator();
        while (listIterator3.hasNext()) {
            AbstractTagFrameBody body2 = ((AbstractID3v2Frame) listIterator3.next()).getBody();
            if (body2 instanceof FrameBodyTXXX) {
                if (((FrameBodyTXXX) body2).getDescription().equals(frameAndSubId.getSubId())) {
                    if (fields.size() == 1) {
                        removeFrame(frameAndSubId.getFrameId());
                    } else {
                        listIterator3.remove();
                    }
                }
            } else if (body2 instanceof FrameBodyCOMM) {
                if (((FrameBodyCOMM) body2).getDescription().equals(frameAndSubId.getSubId())) {
                    if (fields.size() == 1) {
                        removeFrame(frameAndSubId.getFrameId());
                    } else {
                        listIterator3.remove();
                    }
                }
            } else if (body2 instanceof FrameBodyWXXX) {
                if (((FrameBodyWXXX) body2).getDescription().equals(frameAndSubId.getSubId())) {
                    if (fields.size() == 1) {
                        removeFrame(frameAndSubId.getFrameId());
                    } else {
                        listIterator3.remove();
                    }
                }
            } else if (body2 instanceof FrameBodyUFID) {
                if (((FrameBodyUFID) body2).getOwner().equals(frameAndSubId.getSubId())) {
                    if (fields.size() == 1) {
                        removeFrame(frameAndSubId.getFrameId());
                    } else {
                        listIterator3.remove();
                    }
                }
            } else if (body2 instanceof FrameBodyTIPL) {
                PairedTextEncodedStringNullTerminated.ValuePairs pairing2 = ((FrameBodyTIPL) body2).getPairing();
                ListIterator<Pair> listIterator4 = pairing2.getMapping().listIterator();
                while (listIterator4.hasNext()) {
                    if (listIterator4.next().getKey().equals(frameAndSubId.getSubId())) {
                        listIterator4.remove();
                    }
                }
                if (pairing2.getMapping().size() == 0) {
                    removeFrame(frameAndSubId.getFrameId());
                }
            } else {
                if (!(body2 instanceof FrameBodyIPLS)) {
                    throw new RuntimeException("Need to implement getFields(FieldKey genericKey) for:" + body2.getClass());
                }
                PairedTextEncodedStringNullTerminated.ValuePairs pairing3 = ((FrameBodyIPLS) body2).getPairing();
                ListIterator<Pair> listIterator5 = pairing3.getMapping().listIterator();
                while (listIterator5.hasNext()) {
                    if (listIterator5.next().getKey().equals(frameAndSubId.getSubId())) {
                        listIterator5.remove();
                    }
                }
                if (pairing3.getMapping().size() == 0) {
                    removeFrame(frameAndSubId.getFrameId());
                }
            }
        }
    }

    public String doGetValueAtIndex(FrameAndSubId frameAndSubId, int i) throws KeyNotFoundException {
        List<String> listDoGetValues = doGetValues(frameAndSubId);
        return listDoGetValues.size() > i ? listDoGetValues.get(i) : "";
    }

    public List<String> doGetValues(FrameAndSubId frameAndSubId) throws KeyNotFoundException {
        ArrayList arrayList = new ArrayList();
        if (frameAndSubId.getSubId() != null) {
            ListIterator<TagField> listIterator = getFields(frameAndSubId.getFrameId()).listIterator();
            while (listIterator.hasNext()) {
                AbstractTagFrameBody body = ((AbstractID3v2Frame) listIterator.next()).getBody();
                if (body instanceof FrameBodyTXXX) {
                    FrameBodyTXXX frameBodyTXXX = (FrameBodyTXXX) body;
                    if (frameBodyTXXX.getDescription().equals(frameAndSubId.getSubId())) {
                        arrayList.addAll(frameBodyTXXX.getValues());
                    }
                } else if (body instanceof FrameBodyWXXX) {
                    FrameBodyWXXX frameBodyWXXX = (FrameBodyWXXX) body;
                    if (frameBodyWXXX.getDescription().equals(frameAndSubId.getSubId())) {
                        arrayList.addAll(frameBodyWXXX.getUrlLinks());
                    }
                } else if (body instanceof FrameBodyCOMM) {
                    FrameBodyCOMM frameBodyCOMM = (FrameBodyCOMM) body;
                    if (frameBodyCOMM.getDescription().equals(frameAndSubId.getSubId())) {
                        arrayList.addAll(frameBodyCOMM.getValues());
                    }
                } else if (body instanceof FrameBodyUFID) {
                    FrameBodyUFID frameBodyUFID = (FrameBodyUFID) body;
                    if (frameBodyUFID.getOwner().equals(frameAndSubId.getSubId()) && frameBodyUFID.getUniqueIdentifier() != null) {
                        arrayList.add(new String(frameBodyUFID.getUniqueIdentifier()));
                    }
                } else {
                    if (!(body instanceof AbstractFrameBodyPairs)) {
                        throw new RuntimeException("Need to implement getFields(FieldKey genericKey) for:" + body.getClass());
                    }
                    for (Pair pair : ((AbstractFrameBodyPairs) body).getPairing().getMapping()) {
                        if (pair.getKey().equals(frameAndSubId.getSubId()) && pair.getValue() != null) {
                            arrayList.add(pair.getValue());
                        }
                    }
                }
            }
        } else if (frameAndSubId.getGenericKey() == null || !(frameAndSubId.getGenericKey() == FieldKey.PERFORMER || frameAndSubId.getGenericKey() == FieldKey.INVOLVED_PERSON)) {
            Iterator<TagField> it = getFields(frameAndSubId.getFrameId()).iterator();
            while (it.hasNext()) {
                AbstractID3v2Frame abstractID3v2Frame = (AbstractID3v2Frame) it.next();
                if (abstractID3v2Frame != null) {
                    if (abstractID3v2Frame.getBody() instanceof AbstractFrameBodyTextInfo) {
                        arrayList.addAll(((AbstractFrameBodyTextInfo) abstractID3v2Frame.getBody()).getValues());
                    } else {
                        arrayList.add(getTextValueForFrame(abstractID3v2Frame));
                    }
                }
            }
        } else {
            ListIterator<TagField> listIterator2 = getFields(frameAndSubId.getFrameId()).listIterator();
            while (listIterator2.hasNext()) {
                AbstractTagFrameBody body2 = ((AbstractID3v2Frame) listIterator2.next()).getBody();
                if (body2 instanceof AbstractFrameBodyPairs) {
                    for (Pair pair2 : ((AbstractFrameBodyPairs) body2).getPairing().getMapping()) {
                        if (!StandardIPLSKey.isKey(pair2.getKey()) && !pair2.getValue().isEmpty()) {
                            if (pair2.getKey().isEmpty()) {
                                arrayList.add(pair2.getValue());
                            } else {
                                arrayList.add(pair2.getPairValue());
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof AbstractID3v2Tag) && this.frameMap.equals(((AbstractID3v2Tag) obj).frameMap) && super.equals(obj);
    }

    @Override
    public List<String> getAll(FieldKey fieldKey) throws KeyNotFoundException {
        ArrayList arrayList = new ArrayList();
        List<TagField> fields = getFields(fieldKey);
        if (ID3NumberTotalFields.isNumber(fieldKey)) {
            if (fields != null && fields.size() > 0) {
                arrayList.add(((AbstractFrameBodyNumberTotal) ((AbstractID3v2Frame) fields.get(0)).getBody()).getNumberAsText());
            }
            return arrayList;
        }
        if (ID3NumberTotalFields.isTotal(fieldKey)) {
            if (fields != null && fields.size() > 0) {
                arrayList.add(((AbstractFrameBodyNumberTotal) ((AbstractID3v2Frame) fields.get(0)).getBody()).getTotalAsText());
            }
            return arrayList;
        }
        if (fieldKey != FieldKey.RATING) {
            return doGetValues(getFrameAndSubIdFromGenericKey(fieldKey));
        }
        if (fields != null && fields.size() > 0) {
            arrayList.add(String.valueOf(((FrameBodyPOPM) ((AbstractID3v2Frame) fields.get(0)).getBody()).getRating()));
        }
        return arrayList;
    }

    public int getDuplicateBytes() {
        return this.duplicateBytes;
    }

    public String getDuplicateFrameId() {
        return this.duplicateFrameId;
    }

    public int getEmptyFrameBytes() {
        return this.emptyFrameBytes;
    }

    public Object getEncryptedFrame(String str) {
        return this.encryptedFrameMap.get(str);
    }

    public Long getEndLocationInFile() {
        return this.endLocationInFile;
    }

    @Override
    public int getFieldCount() {
        int i = 0;
        while (getFields().hasNext()) {
            i++;
        }
        return i;
    }

    @Override
    public int getFieldCountIncludingSubValues() {
        Iterator<TagField> fields = getFields();
        int numberOfValues = 0;
        while (fields.hasNext()) {
            TagField next = fields.next();
            if (next instanceof AbstractID3v2Frame) {
                AbstractID3v2Frame abstractID3v2Frame = (AbstractID3v2Frame) next;
                if ((abstractID3v2Frame.getBody() instanceof AbstractFrameBodyTextInfo) && !(abstractID3v2Frame.getBody() instanceof FrameBodyTXXX)) {
                    numberOfValues += ((AbstractFrameBodyTextInfo) abstractID3v2Frame.getBody()).getNumberOfValues();
                }
            }
            numberOfValues++;
        }
        return numberOfValues;
    }

    @Override
    public List<TagField> getFields(String str) throws KeyNotFoundException {
        Object frame = getFrame(str);
        if (frame == null) {
            return new ArrayList();
        }
        if (frame instanceof List) {
            return (List) frame;
        }
        if (frame instanceof AbstractID3v2Frame) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((TagField) frame);
            return arrayList;
        }
        throw new RuntimeException("Found entry in frameMap that was not a frame or a list:" + frame);
    }

    public FileLock getFileLockForWriting(FileChannel fileChannel, String str) throws IOException {
        AbstractID3Tag.logger.finest("locking fileChannel for " + str);
        try {
            FileLock fileLockTryLock = fileChannel.tryLock();
            if (fileLockTryLock != null) {
                return fileLockTryLock;
            }
            throw new IOException(ErrorMessage.GENERAL_WRITE_FAILED_FILE_LOCKED.getMsg(str));
        } catch (IOException | Error unused) {
            return null;
        }
    }

    public int getFileReadBytes() {
        return this.fileReadSize;
    }

    @Override
    public String getFirst(String str) {
        AbstractID3v2Frame firstField = getFirstField(str);
        return firstField == null ? "" : getTextValueForFrame(firstField);
    }

    @Override
    public Artwork getFirstArtwork() {
        List<Artwork> artworkList = getArtworkList();
        if (artworkList.size() > 0) {
            return artworkList.get(0);
        }
        return null;
    }

    public Object getFrame(String str) {
        return this.frameMap.get(str);
    }

    public abstract FrameAndSubId getFrameAndSubIdFromGenericKey(FieldKey fieldKey);

    public Iterator getFrameOfType(String str) {
        HashSet hashSet = new HashSet();
        for (String str2 : this.frameMap.keySet()) {
            if (str2.startsWith(str)) {
                Object obj = this.frameMap.get(str2);
                if (obj instanceof List) {
                    Iterator it = ((List) obj).iterator();
                    while (it.hasNext()) {
                        hashSet.add(it.next());
                    }
                } else {
                    hashSet.add(obj);
                }
            }
        }
        return hashSet.iterator();
    }

    public abstract ID3Frames getID3Frames();

    public int getInvalidFrames() {
        return this.invalidFrames;
    }

    public abstract Comparator getPreferredFrameOrderComparator();

    @Override
    public int getSize() {
        int size = 0;
        for (Object obj : this.frameMap.values()) {
            if (obj instanceof AbstractID3v2Frame) {
                size += ((AbstractID3v2Frame) obj).getSize();
            } else if (obj instanceof AggregatedFrame) {
                Iterator<AbstractID3v2Frame> it = ((AggregatedFrame) obj).frames.iterator();
                while (it.hasNext()) {
                    size += it.next().getSize();
                }
            } else if (obj instanceof List) {
                ListIterator listIterator = ((ArrayList) obj).listIterator();
                while (listIterator.hasNext()) {
                    size += ((AbstractID3v2Frame) listIterator.next()).getSize();
                }
            }
        }
        return size;
    }

    public Long getStartLocationInFile() {
        return this.startLocationInFile;
    }

    @Override
    public String getValue(FieldKey fieldKey, int i) throws KeyNotFoundException {
        if (fieldKey == null) {
            throw new KeyNotFoundException();
        }
        if (ID3NumberTotalFields.isNumber(fieldKey) || ID3NumberTotalFields.isTotal(fieldKey)) {
            List<TagField> fields = getFields(fieldKey);
            if (fields == null || fields.size() <= 0) {
                return "";
            }
            AbstractID3v2Frame abstractID3v2Frame = (AbstractID3v2Frame) fields.get(0);
            if (ID3NumberTotalFields.isNumber(fieldKey)) {
                return ((AbstractFrameBodyNumberTotal) abstractID3v2Frame.getBody()).getNumberAsText();
            }
            if (ID3NumberTotalFields.isTotal(fieldKey)) {
                return ((AbstractFrameBodyNumberTotal) abstractID3v2Frame.getBody()).getTotalAsText();
            }
        } else if (fieldKey == FieldKey.RATING) {
            List<TagField> fields2 = getFields(fieldKey);
            return (fields2 == null || fields2.size() <= i) ? "" : String.valueOf(((FrameBodyPOPM) ((AbstractID3v2Frame) fields2.get(i)).getBody()).getRating());
        }
        return doGetValueAtIndex(getFrameAndSubIdFromGenericKey(fieldKey), i);
    }

    @Override
    public boolean hasCommonFields() {
        return true;
    }

    @Override
    public boolean hasField(FieldKey fieldKey) {
        if (fieldKey == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        try {
            return getFirstField(fieldKey) != null;
        } catch (KeyNotFoundException e) {
            AbstractID3Tag.logger.log(Level.SEVERE, e.getMessage(), (Throwable) e);
            return false;
        }
    }

    public boolean hasFrame(String str) {
        return this.frameMap.containsKey(str);
    }

    public boolean hasFrameAndBody(String str) {
        if (!hasFrame(str)) {
            return false;
        }
        Object frame = getFrame(str);
        if (frame instanceof AbstractID3v2Frame) {
            return !(((AbstractID3v2Frame) frame).getBody() instanceof FrameBodyUnsupported);
        }
        return true;
    }

    public boolean hasFrameOfType(String str) {
        Iterator<String> it = this.frameMap.keySet().iterator();
        boolean z = false;
        while (it.hasNext() && !z) {
            if (it.next().startsWith(str)) {
                z = true;
            }
        }
        return z;
    }

    @Override
    public boolean isEmpty() {
        return this.frameMap.size() == 0;
    }

    @Override
    public Iterator iterator() {
        return this.frameMap.values().iterator();
    }

    public void loadFrameIntoMap(String str, AbstractID3v2Frame abstractID3v2Frame) {
        if (abstractID3v2Frame.getBody() instanceof FrameBodyEncrypted) {
            loadFrameIntoSpecifiedMap(this.encryptedFrameMap, str, abstractID3v2Frame);
        } else {
            loadFrameIntoSpecifiedMap(this.frameMap, str, abstractID3v2Frame);
        }
    }

    public void loadFrameIntoSpecifiedMap(HashMap map, String str, AbstractID3v2Frame abstractID3v2Frame) {
        if (!ID3v24Frames.getInstanceOf().isMultipleAllowed(str) && !ID3v23Frames.getInstanceOf().isMultipleAllowed(str) && !ID3v22Frames.getInstanceOf().isMultipleAllowed(str)) {
            if (!map.containsKey(str)) {
                AbstractID3Tag.logger.finer("Adding Frame" + str);
                map.put(str, abstractID3v2Frame);
                return;
            }
            AbstractID3Tag.logger.warning("Ignoring Duplicate Frame:" + str);
            if (this.duplicateFrameId.length() > 0) {
                this.duplicateFrameId += ProcessInfo.SPLIT_NEW_VERSION;
            }
            this.duplicateFrameId += str;
            this.duplicateBytes += ((AbstractID3v2Frame) this.frameMap.get(str)).getSize();
            return;
        }
        if (!map.containsKey(str)) {
            AbstractID3Tag.logger.finer("Adding Multi FrameList(3)" + str);
            map.put(str, abstractID3v2Frame);
            return;
        }
        Object obj = map.get(str);
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(abstractID3v2Frame);
            AbstractID3Tag.logger.finer("Adding Multi Frame(1)" + str);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add((AbstractID3v2Frame) obj);
        arrayList.add(abstractID3v2Frame);
        map.put(str, arrayList);
        AbstractID3Tag.logger.finer("Adding Multi Frame(2)" + str);
    }

    public void mergeDuplicateFrames(AbstractID3v2Frame abstractID3v2Frame, List<AbstractID3v2Frame> list) {
        ListIterator<AbstractID3v2Frame> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            AbstractID3v2Frame next = listIterator.next();
            if (abstractID3v2Frame.getBody() instanceof FrameBodyTXXX) {
                if (((FrameBodyTXXX) abstractID3v2Frame.getBody()).getDescription().equals(((FrameBodyTXXX) next.getBody()).getDescription())) {
                    listIterator.set(abstractID3v2Frame);
                    this.frameMap.put(abstractID3v2Frame.getId(), list);
                    return;
                }
            } else if (abstractID3v2Frame.getBody() instanceof FrameBodyWXXX) {
                if (((FrameBodyWXXX) abstractID3v2Frame.getBody()).getDescription().equals(((FrameBodyWXXX) next.getBody()).getDescription())) {
                    listIterator.set(abstractID3v2Frame);
                    this.frameMap.put(abstractID3v2Frame.getId(), list);
                    return;
                }
            } else if (abstractID3v2Frame.getBody() instanceof FrameBodyCOMM) {
                if (((FrameBodyCOMM) abstractID3v2Frame.getBody()).getDescription().equals(((FrameBodyCOMM) next.getBody()).getDescription())) {
                    listIterator.set(abstractID3v2Frame);
                    this.frameMap.put(abstractID3v2Frame.getId(), list);
                    return;
                }
            } else if (abstractID3v2Frame.getBody() instanceof FrameBodyUFID) {
                if (((FrameBodyUFID) abstractID3v2Frame.getBody()).getOwner().equals(((FrameBodyUFID) next.getBody()).getOwner())) {
                    listIterator.set(abstractID3v2Frame);
                    this.frameMap.put(abstractID3v2Frame.getId(), list);
                    return;
                }
            } else if (abstractID3v2Frame.getBody() instanceof FrameBodyUSLT) {
                if (((FrameBodyUSLT) abstractID3v2Frame.getBody()).getDescription().equals(((FrameBodyUSLT) next.getBody()).getDescription())) {
                    listIterator.set(abstractID3v2Frame);
                    this.frameMap.put(abstractID3v2Frame.getId(), list);
                    return;
                }
            } else if (abstractID3v2Frame.getBody() instanceof FrameBodyPOPM) {
                if (((FrameBodyPOPM) abstractID3v2Frame.getBody()).getEmailToUser().equals(((FrameBodyPOPM) next.getBody()).getEmailToUser())) {
                    listIterator.set(abstractID3v2Frame);
                    this.frameMap.put(abstractID3v2Frame.getId(), list);
                    return;
                }
            } else if (abstractID3v2Frame.getBody() instanceof AbstractFrameBodyNumberTotal) {
                mergeNumberTotalFrames(abstractID3v2Frame, next);
                return;
            } else if (abstractID3v2Frame.getBody() instanceof AbstractFrameBodyPairs) {
                ((AbstractFrameBodyPairs) next.getBody()).addPair(((AbstractFrameBodyPairs) abstractID3v2Frame.getBody()).getText());
                return;
            }
        }
        if (!getID3Frames().isMultipleAllowed(abstractID3v2Frame.getId())) {
            this.frameMap.put(abstractID3v2Frame.getId(), abstractID3v2Frame);
        } else {
            list.add(abstractID3v2Frame);
            this.frameMap.put(abstractID3v2Frame.getId(), list);
        }
    }

    public void mergeNumberTotalFrames(AbstractID3v2Frame abstractID3v2Frame, AbstractID3v2Frame abstractID3v2Frame2) {
        AbstractFrameBodyNumberTotal abstractFrameBodyNumberTotal = (AbstractFrameBodyNumberTotal) abstractID3v2Frame.getBody();
        AbstractFrameBodyNumberTotal abstractFrameBodyNumberTotal2 = (AbstractFrameBodyNumberTotal) abstractID3v2Frame2.getBody();
        if (abstractFrameBodyNumberTotal.getNumber() != null && abstractFrameBodyNumberTotal.getNumber().intValue() > 0) {
            abstractFrameBodyNumberTotal2.setNumber(abstractFrameBodyNumberTotal.getNumberAsText());
        }
        if (abstractFrameBodyNumberTotal.getTotal() == null || abstractFrameBodyNumberTotal.getTotal().intValue() <= 0) {
            return;
        }
        abstractFrameBodyNumberTotal2.setTotal(abstractFrameBodyNumberTotal.getTotalAsText());
    }

    public void processDuplicateFrame(AbstractID3v2Frame abstractID3v2Frame, AbstractID3v2Frame abstractID3v2Frame2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(abstractID3v2Frame2);
        arrayList.add(abstractID3v2Frame);
        this.frameMap.put(abstractID3v2Frame.getIdentifier(), arrayList);
    }

    public void removeFrame(String str) {
        AbstractID3Tag.logger.finest("Removing frame with identifier:" + str);
        this.frameMap.remove(str);
    }

    public void removeFrameOfType(String str) {
        HashSet<String> hashSet = new HashSet();
        for (String str2 : this.frameMap.keySet()) {
            if (str2.startsWith(str)) {
                hashSet.add(str2);
            }
        }
        for (String str3 : hashSet) {
            AbstractID3Tag.logger.finest("Removing frame with identifier:" + str3 + "because starts with:" + str);
            this.frameMap.remove(str3);
        }
    }

    public void removeUnsupportedFrames() {
        Iterator it = iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof AbstractID3v2Frame) {
                AbstractID3v2Frame abstractID3v2Frame = (AbstractID3v2Frame) next;
                if (abstractID3v2Frame.getBody() instanceof FrameBodyUnsupported) {
                    AbstractID3Tag.logger.finest("Removing frame" + abstractID3v2Frame.getIdentifier());
                    it.remove();
                }
            }
        }
    }

    @Override
    public boolean seek(ByteBuffer byteBuffer) {
        byteBuffer.rewind();
        AbstractID3Tag.logger.config("ByteBuffer pos:" + byteBuffer.position() + ":limit" + byteBuffer.limit() + ":cap" + byteBuffer.capacity());
        byte[] bArr = new byte[3];
        byteBuffer.get(bArr, 0, 3);
        return Arrays.equals(bArr, TAG_ID) && byteBuffer.get() == getMajorVersion() && byteBuffer.get() == getRevision();
    }

    @Override
    public boolean setEncoding(Charset charset) throws FieldDataInvalidException {
        throw new UnsupportedOperationException("Not Implemented Yet");
    }

    public void setEndLocationInFile(long j) {
        this.endLocationInFile = Long.valueOf(j);
    }

    @Override
    public void setField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        setField(createField(fieldKey, strArr));
    }

    public void setFrame(AbstractID3v2Frame abstractID3v2Frame) {
        this.frameMap.put(abstractID3v2Frame.getIdentifier(), abstractID3v2Frame);
    }

    public void setStartLocationInFile(long j) {
        this.startLocationInFile = Long.valueOf(j);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Tag content:\n");
        Iterator<TagField> fields = getFields();
        while (fields.hasNext()) {
            TagField next = fields.next();
            sb.append("\t");
            sb.append(next.getId());
            sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(next.toString());
            sb.append("\n");
        }
        return sb.toString();
    }

    public abstract long write(File file, long j) throws IOException;

    @Override
    public void write(RandomAccessFile randomAccessFile) throws IOException {
    }

    public void writeBufferToFile(File file, ByteBuffer byteBuffer, byte[] bArr, int i, int i2, long j) throws Throwable {
        if (i2 > j) {
            AbstractID3Tag.logger.finest("Adjusting Padding");
            adjustPadding(file, i2, j);
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                FileChannel channel = randomAccessFile.getChannel();
                try {
                    FileLock fileLockForWriting = getFileLockForWriting(channel, file.getPath());
                    try {
                        channel.write(byteBuffer);
                        channel.write(ByteBuffer.wrap(bArr));
                        channel.write(ByteBuffer.wrap(new byte[i]));
                        if (fileLockForWriting != null) {
                            fileLockForWriting.close();
                        }
                        channel.close();
                        randomAccessFile.close();
                    } catch (Throwable th) {
                        if (fileLockForWriting != null) {
                            try {
                                fileLockForWriting.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (Throwable th5) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th6) {
                    th5.addSuppressed(th6);
                }
                throw th5;
            }
        } catch (FileNotFoundException e) {
            AbstractID3Tag.logger.log(Level.SEVERE, getLoggingFilename() + e.getMessage(), (Throwable) e);
            if (e.getMessage().contains(FileSystemMessage.ACCESS_IS_DENIED.getMsg()) || e.getMessage().contains(FileSystemMessage.PERMISSION_DENIED.getMsg())) {
                Logger logger = AbstractID3Tag.logger;
                ErrorMessage errorMessage = ErrorMessage.GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING;
                logger.severe(errorMessage.getMsg(file.getPath()));
                throw new UnableToModifyFileException(errorMessage.getMsg(file.getPath()));
            }
            Logger logger2 = AbstractID3Tag.logger;
            ErrorMessage errorMessage2 = ErrorMessage.GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING;
            logger2.severe(errorMessage2.getMsg(file.getPath()));
            throw new UnableToCreateFileException(errorMessage2.getMsg(file.getPath()));
        } catch (IOException e2) {
            AbstractID3Tag.logger.log(Level.SEVERE, getLoggingFilename() + e2.getMessage(), (Throwable) e2);
            if (e2.getMessage().equals(FileSystemMessage.ACCESS_IS_DENIED.getMsg())) {
                Logger logger3 = AbstractID3Tag.logger;
                ErrorMessage errorMessage3 = ErrorMessage.GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING;
                logger3.severe(errorMessage3.getMsg(file.getParentFile().getPath()));
                throw new UnableToModifyFileException(errorMessage3.getMsg(file.getParentFile().getPath()));
            }
            Logger logger4 = AbstractID3Tag.logger;
            ErrorMessage errorMessage4 = ErrorMessage.GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING;
            logger4.severe(errorMessage4.getMsg(file.getParentFile().getPath()));
            throw new UnableToCreateFileException(errorMessage4.getMsg(file.getParentFile().getPath()));
        } catch (Exception e3) {
            AbstractID3Tag.logger.log(Level.SEVERE, getLoggingFilename() + e3.getMessage(), (Throwable) e3);
            throw new UnableToModifyFileException(ErrorMessage.GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING.getMsg(file.getParentFile().getPath()));
        }
    }

    public ByteArrayOutputStream writeFramesToBuffer() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeFramesToBufferStream(this.frameMap, byteArrayOutputStream);
        writeFramesToBufferStream(this.encryptedFrameMap, byteArrayOutputStream);
        return byteArrayOutputStream;
    }

    public void writePadding(WritableByteChannel writableByteChannel, int i) throws IOException {
        if (i > 0) {
            writableByteChannel.write(ByteBuffer.wrap(new byte[i]));
        }
    }

    @Override
    public TagField getFirstField(FieldKey fieldKey) throws KeyNotFoundException {
        List<TagField> fields = getFields(fieldKey);
        if (fields.size() > 0) {
            return fields.get(0);
        }
        return null;
    }

    public void setFrame(String str, List<AbstractID3v2Frame> list) {
        AbstractID3Tag.logger.finest("Adding " + list.size() + " frames for " + str);
        this.frameMap.put(str, list);
    }

    public void write(WritableByteChannel writableByteChannel, int i) throws IOException {
    }

    @Override
    public void addField(TagField tagField) throws FieldDataInvalidException {
        if (tagField == null) {
            return;
        }
        boolean z = tagField instanceof AbstractID3v2Frame;
        if (!z && !(tagField instanceof AggregatedFrame)) {
            throw new FieldDataInvalidException("Field " + tagField + " is not of type AbstractID3v2Frame or AggregatedFrame");
        }
        if (z) {
            AbstractID3v2Frame abstractID3v2Frame = (AbstractID3v2Frame) tagField;
            Object obj = this.frameMap.get(tagField.getId());
            if (obj == null) {
                this.frameMap.put(tagField.getId(), tagField);
                return;
            } else {
                if (obj instanceof List) {
                    addNewFrameOrAddField((List) obj, this.frameMap, null, abstractID3v2Frame);
                    return;
                }
                addNewFrameOrAddField(new ArrayList(), this.frameMap, (AbstractID3v2Frame) obj, abstractID3v2Frame);
                return;
            }
        }
        this.frameMap.put(tagField.getId(), tagField);
    }

    @Override
    public void setField(TagField tagField) throws FieldDataInvalidException {
        boolean z = tagField instanceof AbstractID3v2Frame;
        if (!z && !(tagField instanceof AggregatedFrame)) {
            throw new FieldDataInvalidException("Field " + tagField + " is not of type AbstractID3v2Frame nor AggregatedFrame");
        }
        if (z) {
            AbstractID3v2Frame abstractID3v2Frame = (AbstractID3v2Frame) tagField;
            Object obj = this.frameMap.get(tagField.getId());
            if (obj == null) {
                this.frameMap.put(tagField.getId(), tagField);
                return;
            }
            if (obj instanceof AbstractID3v2Frame) {
                ArrayList arrayList = new ArrayList();
                arrayList.add((AbstractID3v2Frame) obj);
                mergeDuplicateFrames(abstractID3v2Frame, arrayList);
                return;
            } else {
                if (obj instanceof List) {
                    mergeDuplicateFrames(abstractID3v2Frame, (List) obj);
                    return;
                }
                return;
            }
        }
        this.frameMap.put(tagField.getId(), tagField);
    }

    public void write(OutputStream outputStream) throws IOException {
        write(Channels.newChannel(outputStream), 0);
    }

    @Override
    public String getFirst(FieldKey fieldKey) throws KeyNotFoundException {
        return getValue(fieldKey, 0);
    }

    @Override
    public boolean hasField(String str) {
        return hasFrame(str);
    }

    public void write(OutputStream outputStream, int i) throws IOException {
        write(Channels.newChannel(outputStream), i);
    }

    @Override
    public AbstractID3v2Frame getFirstField(String str) {
        Object frame = getFrame(str);
        if (frame == null) {
            return null;
        }
        if (frame instanceof List) {
            return (AbstractID3v2Frame) ((List) frame).get(0);
        }
        return (AbstractID3v2Frame) frame;
    }

    private static boolean isID3V2Header(FileChannel fileChannel) throws IOException {
        long jPosition = fileChannel.position();
        ByteBuffer fileDataIntoBufferBE = Utils.readFileDataIntoBufferBE(fileChannel, 3);
        fileChannel.position(jPosition);
        return Utils.readThreeBytesAsChars(fileDataIntoBufferBE).equals(TAGID);
    }

    public static boolean isId3Tag(FileChannel fileChannel) throws IOException {
        if (!isID3V2Header(fileChannel)) {
            return false;
        }
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(4);
        fileChannel.position(fileChannel.position() + 6);
        fileChannel.read(byteBufferAllocateDirect);
        byteBufferAllocateDirect.flip();
        fileChannel.position(ID3SyncSafeInteger.bufferToValue(byteBufferAllocateDirect) + 10);
        return true;
    }

    @Override
    public Iterator<TagField> getFields() {
        final Iterator<Map.Entry<String, Object>> it = this.frameMap.entrySet().iterator();
        final Iterator<Map.Entry<String, Object>> it2 = this.frameMap.entrySet().iterator();
        return new Iterator<TagField>() {
            private Iterator<TagField> fieldsIt;
            Map.Entry<String, Object> latestEntry = null;

            private void changeIt() {
                if (it.hasNext()) {
                    while (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        this.latestEntry = (Map.Entry) it2.next();
                        if (!(entry.getValue() instanceof List)) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add((TagField) entry.getValue());
                            this.fieldsIt = arrayList.iterator();
                            return;
                        } else {
                            List list = (List) entry.getValue();
                            if (list.size() != 0) {
                                this.fieldsIt = list.iterator();
                                return;
                            }
                        }
                    }
                }
            }

            @Override
            public boolean hasNext() {
                Iterator<TagField> it3 = this.fieldsIt;
                if (it3 != null && it3.hasNext()) {
                    return true;
                }
                if (it2.hasNext()) {
                    return it2.hasNext();
                }
                return false;
            }

            @Override
            public void remove() {
                this.fieldsIt.remove();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public TagField next() {
                if (this.fieldsIt == null) {
                    changeIt();
                }
                Iterator<TagField> it3 = this.fieldsIt;
                if (it3 != null && !it3.hasNext()) {
                    changeIt();
                }
                Iterator<TagField> it4 = this.fieldsIt;
                if (it4 != null) {
                    return it4.next();
                }
                throw new NoSuchElementException();
            }
        };
    }

    public AbstractID3v2Tag(AbstractID3v2Tag abstractID3v2Tag) {
    }

    @Override
    public List<TagField> getFields(FieldKey fieldKey) throws KeyNotFoundException {
        if (fieldKey != null) {
            FrameAndSubId frameAndSubIdFromGenericKey = getFrameAndSubIdFromGenericKey(fieldKey);
            List<TagField> fields = getFields(frameAndSubIdFromGenericKey.getFrameId());
            ArrayList arrayList = new ArrayList();
            if (frameAndSubIdFromGenericKey.getSubId() != null) {
                for (TagField tagField : fields) {
                    AbstractTagFrameBody body = ((AbstractID3v2Frame) tagField).getBody();
                    if (body instanceof FrameBodyTXXX) {
                        if (((FrameBodyTXXX) body).getDescription().equals(frameAndSubIdFromGenericKey.getSubId())) {
                            arrayList.add(tagField);
                        }
                    } else if (body instanceof FrameBodyWXXX) {
                        if (((FrameBodyWXXX) body).getDescription().equals(frameAndSubIdFromGenericKey.getSubId())) {
                            arrayList.add(tagField);
                        }
                    } else if (body instanceof FrameBodyCOMM) {
                        if (((FrameBodyCOMM) body).getDescription().equals(frameAndSubIdFromGenericKey.getSubId())) {
                            arrayList.add(tagField);
                        }
                    } else if (body instanceof FrameBodyUFID) {
                        if (((FrameBodyUFID) body).getOwner().equals(frameAndSubIdFromGenericKey.getSubId())) {
                            arrayList.add(tagField);
                        }
                    } else if (body instanceof FrameBodyIPLS) {
                        Iterator<Pair> it = ((FrameBodyIPLS) body).getPairing().getMapping().iterator();
                        while (it.hasNext()) {
                            if (it.next().getKey().equals(frameAndSubIdFromGenericKey.getSubId())) {
                                arrayList.add(tagField);
                            }
                        }
                    } else if (body instanceof FrameBodyTIPL) {
                        Iterator<Pair> it2 = ((FrameBodyTIPL) body).getPairing().getMapping().iterator();
                        while (it2.hasNext()) {
                            if (it2.next().getKey().equals(frameAndSubIdFromGenericKey.getSubId())) {
                                arrayList.add(tagField);
                            }
                        }
                    } else {
                        if (body instanceof FrameBodyUnsupported) {
                            return fields;
                        }
                        throw new RuntimeException("Need to implement getFields(FieldKey genericKey) for:" + body.getClass());
                    }
                }
                return arrayList;
            }
            if (ID3NumberTotalFields.isNumber(fieldKey)) {
                for (TagField tagField2 : fields) {
                    AbstractTagFrameBody body2 = ((AbstractID3v2Frame) tagField2).getBody();
                    if ((body2 instanceof AbstractFrameBodyNumberTotal) && ((AbstractFrameBodyNumberTotal) body2).getNumber() != null) {
                        arrayList.add(tagField2);
                    }
                }
                return arrayList;
            }
            if (!ID3NumberTotalFields.isTotal(fieldKey)) {
                return fields;
            }
            for (TagField tagField3 : fields) {
                AbstractTagFrameBody body3 = ((AbstractID3v2Frame) tagField3).getBody();
                if ((body3 instanceof AbstractFrameBodyNumberTotal) && ((AbstractFrameBodyNumberTotal) body3).getTotal() != null) {
                    arrayList.add(tagField3);
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
    }

    @Override
    public void addField(Artwork artwork) throws FieldDataInvalidException {
        addField(createField(artwork));
    }

    @Override
    public void setField(Artwork artwork) throws FieldDataInvalidException {
        setField(createField(artwork));
    }
}
