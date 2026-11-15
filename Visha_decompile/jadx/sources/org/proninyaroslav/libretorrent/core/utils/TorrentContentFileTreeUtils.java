package org.proninyaroslav.libretorrent.core.utils;

import androidx.core.util.Pair;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.BencodeFileItem;
import org.proninyaroslav.libretorrent.core.model.filetree.FileNode;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;
import org.proninyaroslav.libretorrent.core.model.filetree.TorrentContentFileTree;

public class TorrentContentFileTreeUtils {
    /* JADX WARN: Code duplicated, block: B:10:0x0054  */
    public static Pair a(List list) {
        String path;
        TorrentContentFileTree torrentContentFileTree = new TorrentContentFileTree(FileTree.ROOT, 0L, FileNode.Type.DIR);
        TorrentContentFileTree[] torrentContentFileTreeArr = new TorrentContentFileTree[list.size()];
        ArrayList<BencodeFileItem> arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        String str = "";
        TorrentContentFileTree torrentContentFileTree2 = torrentContentFileTree;
        for (BencodeFileItem bencodeFileItem : arrayList) {
            if (str.isEmpty()) {
                path = bencodeFileItem.getPath();
                torrentContentFileTree2 = torrentContentFileTree;
            } else if (bencodeFileItem.getPath().regionMatches(true, 0, str, 0, str.length())) {
                path = bencodeFileItem.getPath().substring(str.length());
            } else {
                path = bencodeFileItem.getPath();
                torrentContentFileTree2 = torrentContentFileTree;
            }
            String[] strArrSplit = path.split(File.separator);
            String strSubstring = bencodeFileItem.getPath().substring(0, bencodeFileItem.getPath().length() - strArrSplit[strArrSplit.length - 1].length());
            int i = 0;
            while (i < strArrSplit.length) {
                if (!torrentContentFileTree2.contains(strArrSplit[i])) {
                    TorrentContentFileTree torrentContentFileTreeB = b(bencodeFileItem.getIndex(), strArrSplit[i], bencodeFileItem.getSize(), torrentContentFileTree2, i == strArrSplit.length - 1);
                    torrentContentFileTreeArr[bencodeFileItem.getIndex()] = torrentContentFileTreeB;
                    torrentContentFileTree2.addChild(torrentContentFileTreeB);
                }
                TorrentContentFileTree child = torrentContentFileTree2.getChild(strArrSplit[i]);
                if (!child.isFile()) {
                    torrentContentFileTree2 = child;
                }
                i++;
            }
            str = strSubstring;
        }
        return Pair.create(torrentContentFileTree, torrentContentFileTreeArr);
    }

    public static TorrentContentFileTree b(int i, String str, long j, TorrentContentFileTree torrentContentFileTree, boolean z) {
        return z ? new TorrentContentFileTree(i, str, j, FileNode.Type.FILE, torrentContentFileTree) : new TorrentContentFileTree(str, 0L, FileNode.Type.DIR, torrentContentFileTree);
    }
}
