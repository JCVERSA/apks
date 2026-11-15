package com.transsion.audiotagger.audio.asf;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.asf.data.AsfHeader;
import com.transsion.audiotagger.audio.asf.data.MetadataContainer;
import com.transsion.audiotagger.audio.asf.data.MetadataDescriptor;
import com.transsion.audiotagger.audio.asf.io.AsfExtHeaderReader;
import com.transsion.audiotagger.audio.asf.io.AsfHeaderReader;
import com.transsion.audiotagger.audio.asf.io.ContentBrandingReader;
import com.transsion.audiotagger.audio.asf.io.ContentDescriptionReader;
import com.transsion.audiotagger.audio.asf.io.FileHeaderReader;
import com.transsion.audiotagger.audio.asf.io.FullRequestInputStream;
import com.transsion.audiotagger.audio.asf.io.LanguageListReader;
import com.transsion.audiotagger.audio.asf.io.MetadataReader;
import com.transsion.audiotagger.audio.asf.io.StreamChunkReader;
import com.transsion.audiotagger.audio.asf.util.TagConverter;
import com.transsion.audiotagger.audio.asf.util.Utils;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.AudioFileReader;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.asf.AsfTag;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class AsfFileReader extends AudioFileReader {
    static final boolean $assertionsDisabled = false;
    private static final AsfHeaderReader HEADER_READER;
    private static final Logger LOGGER = Logger.getLogger("com.transsion.audiotagger.audio.asf");

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add(ContentDescriptionReader.class);
        arrayList.add(ContentBrandingReader.class);
        arrayList.add(MetadataReader.class);
        arrayList.add(LanguageListReader.class);
        AsfExtHeaderReader asfExtHeaderReader = new AsfExtHeaderReader(arrayList, true);
        arrayList.add(FileHeaderReader.class);
        arrayList.add(StreamChunkReader.class);
        AsfHeaderReader asfHeaderReader = new AsfHeaderReader(arrayList, true);
        HEADER_READER = asfHeaderReader;
        asfHeaderReader.setExtendedHeaderReader(asfExtHeaderReader);
    }

    private boolean determineVariableBitrate(AsfHeader asfHeader) {
        List<MetadataDescriptor> descriptorsByName;
        MetadataContainer metadataContainerFindExtendedContentDescription = asfHeader.findExtendedContentDescription();
        if (metadataContainerFindExtendedContentDescription == null || (descriptorsByName = metadataContainerFindExtendedContentDescription.getDescriptorsByName("IsVBR")) == null || descriptorsByName.isEmpty()) {
            return false;
        }
        return Boolean.TRUE.toString().equals(descriptorsByName.get(0).getString());
    }

    private GenericAudioHeader getAudioHeader(AsfHeader asfHeader) throws CannotReadException {
        GenericAudioHeader genericAudioHeader = new GenericAudioHeader();
        if (asfHeader.getFileHeader() == null) {
            throw new CannotReadException("Invalid ASF/WMA file. File header object not available.");
        }
        if (asfHeader.getAudioStreamChunk() == null) {
            throw new CannotReadException("Invalid ASF/WMA file. No audio stream contained.");
        }
        genericAudioHeader.setBitRate(asfHeader.getAudioStreamChunk().getKbps());
        genericAudioHeader.setChannelNumber((int) asfHeader.getAudioStreamChunk().getChannelCount());
        genericAudioHeader.setEncodingType("ASF (audio): " + asfHeader.getAudioStreamChunk().getCodecDescription());
        genericAudioHeader.setLossless(asfHeader.getAudioStreamChunk().getCompressionFormat() == 355);
        genericAudioHeader.setPreciseLength(asfHeader.getFileHeader().getPreciseDuration());
        genericAudioHeader.setSamplingRate((int) asfHeader.getAudioStreamChunk().getSamplingRate());
        genericAudioHeader.setVariableBitRate(determineVariableBitrate(asfHeader));
        genericAudioHeader.setBitsPerSample(asfHeader.getAudioStreamChunk().getBitsPerSample());
        return genericAudioHeader;
    }

    @Override
    public GenericAudioHeader getEncodingInfo(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        randomAccessFile.seek(0L);
        try {
            AsfHeader infoHeader = AsfHeaderReader.readInfoHeader(randomAccessFile);
            if (infoHeader != null) {
                return getAudioHeader(infoHeader);
            }
            throw new CannotReadException("Some values must have been incorrect for interpretation as asf with wma content.");
        } catch (Exception e) {
            if (e instanceof IOException) {
                throw ((IOException) e);
            }
            if (e instanceof CannotReadException) {
                throw ((CannotReadException) e);
            }
            throw new CannotReadException("Failed to read. Cause: " + e.getMessage(), e);
        }
    }

    @Override
    public AudioFile read(File file) throws Throwable {
        if (!file.canRead()) {
            throw new CannotReadException(ErrorMessage.GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE.getMsg(file.getAbsolutePath()));
        }
        FullRequestInputStream fullRequestInputStream = null;
        try {
            try {
                FullRequestInputStream fullRequestInputStream2 = new FullRequestInputStream(new BufferedInputStream(new FileInputStream(file)));
                try {
                    AsfHeader asfHeader = (AsfHeader) HEADER_READER.read(Utils.readGUID(fullRequestInputStream2), (InputStream) fullRequestInputStream2, 0L);
                    if (asfHeader == null) {
                        throw new CannotReadException(ErrorMessage.ASF_HEADER_MISSING.getMsg(file.getAbsolutePath()));
                    }
                    if (asfHeader.getFileHeader() == null) {
                        throw new CannotReadException(ErrorMessage.ASF_FILE_HEADER_MISSING.getMsg(file.getAbsolutePath()));
                    }
                    if (asfHeader.getFileHeader().getFileSize().longValue() != file.length()) {
                        AudioFileReader.logger.warning(ErrorMessage.ASF_FILE_HEADER_SIZE_DOES_NOT_MATCH_FILE_SIZE.getMsg(file.getAbsolutePath(), Long.valueOf(asfHeader.getFileHeader().getFileSize().longValue()), Long.valueOf(file.length())));
                    }
                    AudioFile audioFile = new AudioFile(file, getAudioHeader(asfHeader), getTag(asfHeader));
                    try {
                        fullRequestInputStream2.close();
                    } catch (Exception e) {
                        LOGGER.severe("\"" + file + "\" :" + e);
                    }
                    return audioFile;
                } catch (CannotReadException e2) {
                    throw e2;
                } catch (Exception e3) {
                    e = e3;
                    throw new CannotReadException("\"" + file + "\" :" + e, e);
                } catch (Throwable th) {
                    th = th;
                    fullRequestInputStream = fullRequestInputStream2;
                    if (fullRequestInputStream != null) {
                        try {
                            fullRequestInputStream.close();
                        } catch (Exception e4) {
                            LOGGER.severe("\"" + file + "\" :" + e4);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (CannotReadException e5) {
            throw e5;
        } catch (Exception e6) {
            e = e6;
        }
    }

    private AsfTag getTag(AsfHeader asfHeader) {
        return TagConverter.createTagOf(asfHeader);
    }

    @Override
    public AsfTag getTag(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        randomAccessFile.seek(0L);
        try {
            AsfHeader tagHeader = AsfHeaderReader.readTagHeader(randomAccessFile);
            if (tagHeader != null) {
                return TagConverter.createTagOf(tagHeader);
            }
            throw new CannotReadException("Some values must have been incorrect for interpretation as asf with wma content.");
        } catch (Exception e) {
            AudioFileReader.logger.severe(e.getMessage());
            if (!(e instanceof IOException)) {
                if (e instanceof CannotReadException) {
                    throw ((CannotReadException) e);
                }
                throw new CannotReadException("Failed to read. Cause: " + e.getMessage());
            }
            throw ((IOException) e);
        }
    }
}
