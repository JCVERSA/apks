package com.transsion.audiotagger.audio.generic;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.ModifyVetoException;
import java.io.File;
import java.util.Iterator;
import java.util.Vector;

public class ModificationHandler implements AudioFileModificationListener {
    private Vector<AudioFileModificationListener> listeners = new Vector<>();

    public void addAudioFileModificationListener(AudioFileModificationListener audioFileModificationListener) {
        if (this.listeners.contains(audioFileModificationListener)) {
            return;
        }
        this.listeners.add(audioFileModificationListener);
    }

    @Override
    public void fileModified(AudioFile audioFile, File file) throws ModifyVetoException {
        for (AudioFileModificationListener audioFileModificationListener : this.listeners) {
            try {
                audioFileModificationListener.fileModified(audioFile, file);
            } catch (ModifyVetoException e) {
                vetoThrown(audioFileModificationListener, audioFile, e);
                throw e;
            }
        }
    }

    @Override
    public void fileOperationFinished(File file) {
        Iterator<AudioFileModificationListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().fileOperationFinished(file);
        }
    }

    @Override
    public void fileWillBeModified(AudioFile audioFile, boolean z) throws ModifyVetoException {
        for (AudioFileModificationListener audioFileModificationListener : this.listeners) {
            try {
                audioFileModificationListener.fileWillBeModified(audioFile, z);
            } catch (ModifyVetoException e) {
                vetoThrown(audioFileModificationListener, audioFile, e);
                throw e;
            }
        }
    }

    public void removeAudioFileModificationListener(AudioFileModificationListener audioFileModificationListener) {
        if (this.listeners.contains(audioFileModificationListener)) {
            this.listeners.remove(audioFileModificationListener);
        }
    }

    @Override
    public void vetoThrown(AudioFileModificationListener audioFileModificationListener, AudioFile audioFile, ModifyVetoException modifyVetoException) {
        Iterator<AudioFileModificationListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().vetoThrown(audioFileModificationListener, audioFile, modifyVetoException);
        }
    }
}
