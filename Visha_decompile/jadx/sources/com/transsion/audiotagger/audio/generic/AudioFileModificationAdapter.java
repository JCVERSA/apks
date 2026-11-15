package com.transsion.audiotagger.audio.generic;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.ModifyVetoException;
import java.io.File;

public class AudioFileModificationAdapter implements AudioFileModificationListener {
    @Override
    public void fileModified(AudioFile audioFile, File file) throws ModifyVetoException {
    }

    @Override
    public void fileOperationFinished(File file) {
    }

    @Override
    public void fileWillBeModified(AudioFile audioFile, boolean z) throws ModifyVetoException {
    }

    @Override
    public void vetoThrown(AudioFileModificationListener audioFileModificationListener, AudioFile audioFile, ModifyVetoException modifyVetoException) {
    }
}
