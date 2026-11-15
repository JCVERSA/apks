package com.transsion.audiotagger.audio;

import com.alibaba.android.arouter.utils.Consts;
import com.transsion.audiotagger.audio.aiff.AiffFileReader;
import com.transsion.audiotagger.audio.aiff.AiffFileWriter;
import com.transsion.audiotagger.audio.asf.AsfFileReader;
import com.transsion.audiotagger.audio.asf.AsfFileWriter;
import com.transsion.audiotagger.audio.dsf.DsfFileReader;
import com.transsion.audiotagger.audio.dsf.DsfFileWriter;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.exceptions.InvalidAudioFrameException;
import com.transsion.audiotagger.audio.exceptions.ReadOnlyFileException;
import com.transsion.audiotagger.audio.flac.FlacFileReader;
import com.transsion.audiotagger.audio.flac.FlacFileWriter;
import com.transsion.audiotagger.audio.generic.AudioFileModificationListener;
import com.transsion.audiotagger.audio.generic.AudioFileReader;
import com.transsion.audiotagger.audio.generic.AudioFileWriter;
import com.transsion.audiotagger.audio.generic.ModificationHandler;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.mp3.MP3FileReader;
import com.transsion.audiotagger.audio.mp3.MP3FileWriter;
import com.transsion.audiotagger.audio.mp4.Mp4FileReader;
import com.transsion.audiotagger.audio.mp4.Mp4FileWriter;
import com.transsion.audiotagger.audio.ogg.OggFileReader;
import com.transsion.audiotagger.audio.ogg.OggFileWriter;
import com.transsion.audiotagger.audio.real.RealFileReader;
import com.transsion.audiotagger.audio.wav.WavFileReader;
import com.transsion.audiotagger.audio.wav.WavFileWriter;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.TagException;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;

public class AudioFileIO {
    private static AudioFileIO defaultInstance;
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio");
    public Map<String, AudioFileReader> readers = new HashMap();
    public Map<String, AudioFileWriter> writers = new HashMap();
    private final ModificationHandler modificationHandler = new ModificationHandler();

    public AudioFileIO() {
        prepareReadersAndWriters();
    }

    public static void closeQuietly(Closeable... closeableArr) {
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException unused) {
                }
            }
        }
    }

    public static void delete(AudioFile audioFile) throws CannotReadException, CannotWriteException {
        getDefaultAudioFileIO().deleteTag(audioFile);
    }

    public static AudioFileIO getDefaultAudioFileIO() {
        if (defaultInstance == null) {
            defaultInstance = new AudioFileIO();
        }
        return defaultInstance;
    }

    private void prepareReadersAndWriters() {
        Map<String, AudioFileReader> map = this.readers;
        SupportedFileFormat supportedFileFormat = SupportedFileFormat.OGG;
        map.put(supportedFileFormat.getFilesuffix(), new OggFileReader());
        Map<String, AudioFileReader> map2 = this.readers;
        SupportedFileFormat supportedFileFormat2 = SupportedFileFormat.FLAC;
        map2.put(supportedFileFormat2.getFilesuffix(), new FlacFileReader());
        Map<String, AudioFileReader> map3 = this.readers;
        SupportedFileFormat supportedFileFormat3 = SupportedFileFormat.MP3;
        map3.put(supportedFileFormat3.getFilesuffix(), new MP3FileReader());
        Map<String, AudioFileReader> map4 = this.readers;
        SupportedFileFormat supportedFileFormat4 = SupportedFileFormat.MP4;
        map4.put(supportedFileFormat4.getFilesuffix(), new Mp4FileReader());
        Map<String, AudioFileReader> map5 = this.readers;
        SupportedFileFormat supportedFileFormat5 = SupportedFileFormat.M4A;
        map5.put(supportedFileFormat5.getFilesuffix(), new Mp4FileReader());
        Map<String, AudioFileReader> map6 = this.readers;
        SupportedFileFormat supportedFileFormat6 = SupportedFileFormat.M4P;
        map6.put(supportedFileFormat6.getFilesuffix(), new Mp4FileReader());
        Map<String, AudioFileReader> map7 = this.readers;
        SupportedFileFormat supportedFileFormat7 = SupportedFileFormat.M4B;
        map7.put(supportedFileFormat7.getFilesuffix(), new Mp4FileReader());
        Map<String, AudioFileReader> map8 = this.readers;
        SupportedFileFormat supportedFileFormat8 = SupportedFileFormat.WAV;
        map8.put(supportedFileFormat8.getFilesuffix(), new WavFileReader());
        Map<String, AudioFileReader> map9 = this.readers;
        SupportedFileFormat supportedFileFormat9 = SupportedFileFormat.WMA;
        map9.put(supportedFileFormat9.getFilesuffix(), new AsfFileReader());
        Map<String, AudioFileReader> map10 = this.readers;
        SupportedFileFormat supportedFileFormat10 = SupportedFileFormat.AIF;
        map10.put(supportedFileFormat10.getFilesuffix(), new AiffFileReader());
        Map<String, AudioFileReader> map11 = this.readers;
        SupportedFileFormat supportedFileFormat11 = SupportedFileFormat.AIFC;
        map11.put(supportedFileFormat11.getFilesuffix(), new AiffFileReader());
        Map<String, AudioFileReader> map12 = this.readers;
        SupportedFileFormat supportedFileFormat12 = SupportedFileFormat.AIFF;
        map12.put(supportedFileFormat12.getFilesuffix(), new AiffFileReader());
        Map<String, AudioFileReader> map13 = this.readers;
        SupportedFileFormat supportedFileFormat13 = SupportedFileFormat.DSF;
        map13.put(supportedFileFormat13.getFilesuffix(), new DsfFileReader());
        RealFileReader realFileReader = new RealFileReader();
        this.readers.put(SupportedFileFormat.RA.getFilesuffix(), realFileReader);
        this.readers.put(SupportedFileFormat.RM.getFilesuffix(), realFileReader);
        this.writers.put(supportedFileFormat.getFilesuffix(), new OggFileWriter());
        this.writers.put(supportedFileFormat2.getFilesuffix(), new FlacFileWriter());
        this.writers.put(supportedFileFormat3.getFilesuffix(), new MP3FileWriter());
        this.writers.put(supportedFileFormat4.getFilesuffix(), new Mp4FileWriter());
        this.writers.put(supportedFileFormat5.getFilesuffix(), new Mp4FileWriter());
        this.writers.put(supportedFileFormat6.getFilesuffix(), new Mp4FileWriter());
        this.writers.put(supportedFileFormat7.getFilesuffix(), new Mp4FileWriter());
        this.writers.put(supportedFileFormat8.getFilesuffix(), new WavFileWriter());
        this.writers.put(supportedFileFormat9.getFilesuffix(), new AsfFileWriter());
        this.writers.put(supportedFileFormat10.getFilesuffix(), new AiffFileWriter());
        this.writers.put(supportedFileFormat11.getFilesuffix(), new AiffFileWriter());
        this.writers.put(supportedFileFormat12.getFilesuffix(), new AiffFileWriter());
        this.writers.put(supportedFileFormat13.getFilesuffix(), new DsfFileWriter());
        this.writers.values().iterator();
        Iterator<AudioFileWriter> it = this.writers.values().iterator();
        while (it.hasNext()) {
            it.next().setAudioFileModificationListener(this.modificationHandler);
        }
    }

    public static AudioFile read(File file) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        return getDefaultAudioFileIO().readFile(file);
    }

    public static AudioFile readAs(File file, String str) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        return getDefaultAudioFileIO().readFileAs(file, str);
    }

    public static AudioFile readMagic(File file) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        return getDefaultAudioFileIO().readFileMagic(file);
    }

    public static void write(AudioFile audioFile) throws CannotWriteException {
        getDefaultAudioFileIO().writeFile(audioFile, null);
    }

    public static void writeAs(AudioFile audioFile, String str) throws Throwable {
        if (str != null && !str.isEmpty()) {
            getDefaultAudioFileIO().writeFile(audioFile, str);
            return;
        }
        throw new CannotWriteException("Not a valid target path: " + str);
    }

    public void addAudioFileModificationListener(AudioFileModificationListener audioFileModificationListener) {
        this.modificationHandler.addAudioFileModificationListener(audioFileModificationListener);
    }

    public void checkFileExists(File file) throws FileNotFoundException {
        logger.config("Reading file:path" + file.getPath() + ":abs:" + file.getAbsolutePath());
        if (file.exists()) {
            return;
        }
        logger.severe("Unable to find:" + file.getPath());
        throw new FileNotFoundException(ErrorMessage.UNABLE_TO_FIND_FILE.getMsg(file.getPath()));
    }

    public void deleteTag(AudioFile audioFile) throws CannotReadException, CannotWriteException {
        String extension = Utils.getExtension(audioFile.getFile());
        AudioFileWriter audioFileWriter = this.writers.get(extension);
        if (audioFileWriter == null) {
            throw new CannotWriteException(ErrorMessage.NO_DELETER_FOR_THIS_FORMAT.getMsg(extension));
        }
        audioFileWriter.delete(audioFile);
    }

    public AudioFile readFile(File file) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        checkFileExists(file);
        String extension = Utils.getExtension(file);
        AudioFileReader audioFileReader = this.readers.get(extension);
        if (audioFileReader == null) {
            throw new CannotReadException(ErrorMessage.NO_READER_FOR_THIS_FORMAT.getMsg(extension));
        }
        AudioFile audioFile = audioFileReader.read(file);
        audioFile.setExt(extension);
        return audioFile;
    }

    public AudioFile readFileAs(File file, String str) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        checkFileExists(file);
        AudioFileReader audioFileReader = this.readers.get(str);
        if (audioFileReader == null) {
            throw new CannotReadException(ErrorMessage.NO_READER_FOR_THIS_FORMAT.getMsg(str));
        }
        AudioFile audioFile = audioFileReader.read(file);
        audioFile.setExt(str);
        return audioFile;
    }

    public AudioFile readFileMagic(File file) throws InvalidAudioFrameException, CannotReadException, IOException, TagException, ReadOnlyFileException {
        checkFileExists(file);
        String magicExtension = Utils.getMagicExtension(file);
        AudioFileReader audioFileReader = this.readers.get(magicExtension);
        if (audioFileReader == null) {
            throw new CannotReadException(ErrorMessage.NO_READER_FOR_THIS_FORMAT.getMsg(magicExtension));
        }
        AudioFile audioFile = audioFileReader.read(file);
        audioFile.setExt(magicExtension);
        return audioFile;
    }

    public void removeAudioFileModificationListener(AudioFileModificationListener audioFileModificationListener) {
        this.modificationHandler.removeAudioFileModificationListener(audioFileModificationListener);
    }

    public void writeFile(AudioFile audioFile, String str) throws Throwable {
        String ext = audioFile.getExt();
        if (str != null && !str.isEmpty()) {
            File file = new File(str + Consts.DOT + ext);
            try {
                Utils.copyThrowsOnException(audioFile.getFile(), file);
                audioFile.setFile(file);
            } catch (IOException e) {
                throw new CannotWriteException("Error While Copying" + e.getMessage());
            }
        }
        AudioFileWriter audioFileWriter = this.writers.get(ext);
        if (audioFileWriter == null) {
            throw new CannotWriteException(ErrorMessage.NO_WRITER_FOR_THIS_FORMAT.getMsg(ext));
        }
        audioFileWriter.write(audioFile);
    }
}
