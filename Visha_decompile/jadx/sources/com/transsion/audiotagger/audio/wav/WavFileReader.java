package com.transsion.audiotagger.audio.wav;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.AudioFileReader2;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.wav.WavTag;
import java.io.File;
import java.io.IOException;

public class WavFileReader extends AudioFileReader2 {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions;

        static {
            int[] iArr = new int[WavOptions.values().length];
            $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions = iArr;
            try {
                iArr[WavOptions.READ_ID3_ONLY_AND_SYNC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[WavOptions.READ_ID3_UNLESS_ONLY_INFO_AND_SYNC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[WavOptions.READ_INFO_ONLY_AND_SYNC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[WavOptions.READ_INFO_UNLESS_ONLY_ID3_AND_SYNC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override
    public GenericAudioHeader getEncodingInfo(File file) throws CannotReadException, IOException {
        return new WavInfoReader(file.getPath()).read(file);
    }

    @Override
    public Tag getTag(File file) throws Throwable {
        WavTag wavTag = new WavTagReader(file.getPath()).read(file);
        int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions[TagOptionSingleton.getInstance().getWavOptions().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            wavTag.syncTagsAfterRead();
        }
        return wavTag;
    }
}
