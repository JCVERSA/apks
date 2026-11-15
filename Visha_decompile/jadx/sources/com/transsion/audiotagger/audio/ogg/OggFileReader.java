package com.transsion.audiotagger.audio.ogg;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.AudioFileReader;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.audio.ogg.util.OggInfoReader;
import com.transsion.audiotagger.audio.ogg.util.OggPageHeader;
import com.transsion.audiotagger.tag.Tag;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.util.logging.Logger;

public class OggFileReader extends AudioFileReader {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.ogg");
    private OggInfoReader ir = new OggInfoReader();
    private OggVorbisTagReader vtr = new OggVorbisTagReader();

    @Override
    public GenericAudioHeader getEncodingInfo(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        return this.ir.read(randomAccessFile);
    }

    @Override
    public Tag getTag(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        return this.vtr.read(randomAccessFile);
    }

    public OggPageHeader readOggPageHeader(RandomAccessFile randomAccessFile, int i) throws CannotReadException, IOException {
        OggPageHeader oggPageHeader = OggPageHeader.read(randomAccessFile);
        while (i > 0) {
            randomAccessFile.seek(randomAccessFile.getFilePointer() + ((long) oggPageHeader.getPageLength()));
            oggPageHeader = OggPageHeader.read(randomAccessFile);
            i--;
        }
        return oggPageHeader;
    }

    public void shortSummarizeOggPageHeaders(File file) throws CannotReadException, IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        int i = 0;
        while (randomAccessFile.getFilePointer() < randomAccessFile.length()) {
            try {
                PrintStream printStream = System.out;
                printStream.println("pageHeader starts at absolute file position:" + randomAccessFile.getFilePointer());
                OggPageHeader oggPageHeader = OggPageHeader.read(randomAccessFile);
                printStream.println("pageHeader finishes at absolute file position:" + randomAccessFile.getFilePointer());
                printStream.println(oggPageHeader + "\n");
                randomAccessFile.seek(randomAccessFile.getFilePointer() + ((long) oggPageHeader.getPageLength()));
                i++;
                if (i >= 5) {
                    break;
                }
            } catch (Throwable th) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        System.out.println("Raf File Pointer at:" + randomAccessFile.getFilePointer() + "File Size is:" + randomAccessFile.length());
        randomAccessFile.close();
    }

    public void summarizeOggPageHeaders(File file) throws CannotReadException, IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        while (randomAccessFile.getFilePointer() < randomAccessFile.length()) {
            try {
                PrintStream printStream = System.out;
                printStream.println("pageHeader starts at absolute file position:" + randomAccessFile.getFilePointer());
                OggPageHeader oggPageHeader = OggPageHeader.read(randomAccessFile);
                printStream.println("pageHeader finishes at absolute file position:" + randomAccessFile.getFilePointer());
                printStream.println(oggPageHeader + "\n");
                randomAccessFile.seek(randomAccessFile.getFilePointer() + ((long) oggPageHeader.getPageLength()));
            } catch (Throwable th) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        System.out.println("Raf File Pointer at:" + randomAccessFile.getFilePointer() + "File Size is:" + randomAccessFile.length());
        randomAccessFile.close();
    }
}
