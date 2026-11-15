package androidx.media3.extractor.metadata.flac;

import androidx.annotation.Nullable;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.UnstableApi;
import com.google.common.primitives.Ints;
import defpackage.ui;

@UnstableApi
@Deprecated
public class VorbisComment implements Metadata.Entry {
    public final String key;
    public final String value;

    public VorbisComment(String str, String str2) {
        this.key = ui.g(str);
        this.value = str2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VorbisComment vorbisComment = (VorbisComment) obj;
        return this.key.equals(vorbisComment.key) && this.value.equals(vorbisComment.value);
    }

    public int hashCode() {
        return ((527 + this.key.hashCode()) * 31) + this.value.hashCode();
    }

    @Override
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        String str = this.key;
        str.hashCode();
        switch (str) {
            case "TOTALTRACKS":
                Integer numQ = Ints.q(this.value);
                if (numQ != null) {
                    builder.setTotalTrackCount(numQ);
                    break;
                }
                break;
            case "TOTALDISCS":
                Integer numQ2 = Ints.q(this.value);
                if (numQ2 != null) {
                    builder.setTotalDiscCount(numQ2);
                    break;
                }
                break;
            case "TRACKNUMBER":
                Integer numQ3 = Ints.q(this.value);
                if (numQ3 != null) {
                    builder.setTrackNumber(numQ3);
                    break;
                }
                break;
            case "ALBUM":
                builder.setAlbumTitle(this.value);
                break;
            case "GENRE":
                builder.setGenre(this.value);
                break;
            case "TITLE":
                builder.setTitle(this.value);
                break;
            case "DESCRIPTION":
                builder.setDescription(this.value);
                break;
            case "DISCNUMBER":
                Integer numQ4 = Ints.q(this.value);
                if (numQ4 != null) {
                    builder.setDiscNumber(numQ4);
                    break;
                }
                break;
            case "ALBUMARTIST":
                builder.setAlbumArtist(this.value);
                break;
            case "ARTIST":
                builder.setArtist(this.value);
                break;
        }
    }

    public String toString() {
        return "VC: " + this.key + "=" + this.value;
    }
}
