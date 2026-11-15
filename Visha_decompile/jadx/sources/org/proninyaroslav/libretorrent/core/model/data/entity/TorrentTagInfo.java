package org.proninyaroslav.libretorrent.core.model.data.entity;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.Index;

@Entity(foreignKeys = {@ForeignKey(childColumns = {"tagId"}, entity = TagInfo.class, onDelete = 5, parentColumns = {TtmlNode.ATTR_ID}), @ForeignKey(childColumns = {"torrentId"}, entity = Torrent.class, onDelete = 5, parentColumns = {TtmlNode.ATTR_ID})}, indices = {@Index({"tagId"}), @Index({"torrentId"})}, primaryKeys = {"tagId", "torrentId"})
public class TorrentTagInfo {
    public final long a;
    public final String b;

    public TorrentTagInfo(long j, String str) {
        this.a = j;
        this.b = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TorrentTagInfo torrentTagInfo = (TorrentTagInfo) obj;
        if (this.a != torrentTagInfo.a) {
            return false;
        }
        return this.b.equals(torrentTagInfo.b);
    }

    public int hashCode() {
        long j = this.a;
        return (((int) (j ^ (j >>> 32))) * 31) + this.b.hashCode();
    }

    public String toString() {
        return "TorrentTagInfo{tagId='" + this.a + "', torrentId='" + this.b + "'}";
    }
}
