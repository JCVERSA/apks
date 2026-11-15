package com.transsion.audiotagger.audio.asf.data;

import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public final class ContentDescription extends MetadataContainer {
    public static final String KEY_AUTHOR = "AUTHOR";
    public static final String KEY_COPYRIGHT = "COPYRIGHT";
    public static final String KEY_DESCRIPTION = "DESCRIPTION";
    public static final String KEY_RATING = "RATING";
    public static final String KEY_TITLE = "TITLE";
    public static final Set<String> ALLOWED = new HashSet(Arrays.asList(KEY_AUTHOR, KEY_COPYRIGHT, KEY_DESCRIPTION, KEY_RATING, KEY_TITLE));

    public ContentDescription() {
        this(0L, BigInteger.ZERO);
    }

    public String getAuthor() {
        return getValueFor(KEY_AUTHOR);
    }

    public String getComment() {
        return getValueFor(KEY_DESCRIPTION);
    }

    public String getCopyRight() {
        return getValueFor(KEY_COPYRIGHT);
    }

    @Override
    public long getCurrentAsfChunkSize() {
        return ((long) (getAuthor().length() * 2)) + 44 + ((long) (getComment().length() * 2)) + ((long) (getRating().length() * 2)) + ((long) (getTitle().length() * 2)) + ((long) (getCopyRight().length() * 2));
    }

    public String getRating() {
        return getValueFor(KEY_RATING);
    }

    public String getTitle() {
        return getValueFor(KEY_TITLE);
    }

    @Override
    public boolean isAddSupported(MetadataDescriptor metadataDescriptor) {
        return ALLOWED.contains(metadataDescriptor.getName()) && super.isAddSupported(metadataDescriptor);
    }

    @Override
    public String prettyPrint(String str) {
        StringBuilder sb = new StringBuilder(super.prettyPrint(str));
        sb.append(str);
        sb.append("  |->Title      : ");
        sb.append(getTitle());
        String str2 = Utils.LINE_SEPARATOR;
        sb.append(str2);
        sb.append(str);
        sb.append("  |->Author     : ");
        sb.append(getAuthor());
        sb.append(str2);
        sb.append(str);
        sb.append("  |->Copyright  : ");
        sb.append(getCopyRight());
        sb.append(str2);
        sb.append(str);
        sb.append("  |->Description: ");
        sb.append(getComment());
        sb.append(str2);
        sb.append(str);
        sb.append("  |->Rating     :");
        sb.append(getRating());
        sb.append(str2);
        return sb.toString();
    }

    public void setAuthor(String str) throws IllegalArgumentException {
        setStringValue(KEY_AUTHOR, str);
    }

    public void setComment(String str) throws IllegalArgumentException {
        setStringValue(KEY_DESCRIPTION, str);
    }

    public void setCopyright(String str) throws IllegalArgumentException {
        setStringValue(KEY_COPYRIGHT, str);
    }

    public void setRating(String str) throws IllegalArgumentException {
        setStringValue(KEY_RATING, str);
    }

    public void setTitle(String str) throws IllegalArgumentException {
        setStringValue(KEY_TITLE, str);
    }

    @Override
    public long writeInto(OutputStream outputStream) throws IOException {
        long currentAsfChunkSize = getCurrentAsfChunkSize();
        outputStream.write(getGuid().getBytes());
        Utils.writeUINT64(getCurrentAsfChunkSize(), outputStream);
        Utils.writeUINT16((getTitle().length() * 2) + 2, outputStream);
        Utils.writeUINT16((getAuthor().length() * 2) + 2, outputStream);
        Utils.writeUINT16((getCopyRight().length() * 2) + 2, outputStream);
        Utils.writeUINT16((getComment().length() * 2) + 2, outputStream);
        Utils.writeUINT16((getRating().length() * 2) + 2, outputStream);
        String title = getTitle();
        Charset charset = AsfHeader.ASF_CHARSET;
        outputStream.write(Utils.getBytes(title, charset));
        byte[] bArr = AsfHeader.ZERO_TERM;
        outputStream.write(bArr);
        outputStream.write(Utils.getBytes(getAuthor(), charset));
        outputStream.write(bArr);
        outputStream.write(Utils.getBytes(getCopyRight(), charset));
        outputStream.write(bArr);
        outputStream.write(Utils.getBytes(getComment(), charset));
        outputStream.write(bArr);
        outputStream.write(Utils.getBytes(getRating(), charset));
        outputStream.write(bArr);
        return currentAsfChunkSize;
    }

    public ContentDescription(long j, BigInteger bigInteger) {
        super(ContainerType.CONTENT_DESCRIPTION, j, bigInteger);
    }
}
