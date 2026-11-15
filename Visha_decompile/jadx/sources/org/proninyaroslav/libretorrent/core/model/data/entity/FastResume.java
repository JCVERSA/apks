package org.proninyaroslav.libretorrent.core.model.data.entity;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.Index;

@Entity(foreignKeys = {@ForeignKey(childColumns = {"torrentId"}, entity = Torrent.class, onDelete = 5, parentColumns = {TtmlNode.ATTR_ID})}, indices = {@Index({"torrentId"})})
public class FastResume {
    public String a;
    public byte[] b;

    public FastResume(String str, byte[] bArr) {
        this.a = str;
        this.b = bArr;
    }
}
