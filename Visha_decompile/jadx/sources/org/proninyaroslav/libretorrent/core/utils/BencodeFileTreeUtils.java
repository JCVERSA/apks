package org.proninyaroslav.libretorrent.core.utils;

import androidx.core.util.Pair;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.BencodeFileItem;
import org.proninyaroslav.libretorrent.core.model.filetree.BencodeFileTree;
import org.proninyaroslav.libretorrent.core.model.filetree.FileNode;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public class BencodeFileTreeUtils {
    /* JADX WARN: Code duplicated, block: B:10:0x0054  */
    public static Pair a(List list) {
        String path;
        BencodeFileTree bencodeFileTree = new BencodeFileTree(FileTree.ROOT, 0L, FileNode.Type.DIR);
        BencodeFileTree[] bencodeFileTreeArr = new BencodeFileTree[list.size()];
        ArrayList<BencodeFileItem> arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        String str = "";
        BencodeFileTree bencodeFileTree2 = bencodeFileTree;
        for (BencodeFileItem bencodeFileItem : arrayList) {
            if (str.isEmpty()) {
                path = bencodeFileItem.getPath();
                bencodeFileTree2 = bencodeFileTree;
            } else if (bencodeFileItem.getPath().regionMatches(true, 0, str, 0, str.length())) {
                path = bencodeFileItem.getPath().substring(str.length());
            } else {
                path = bencodeFileItem.getPath();
                bencodeFileTree2 = bencodeFileTree;
            }
            String[] strArrSplit = path.split(File.separator);
            String strSubstring = bencodeFileItem.getPath().substring(0, bencodeFileItem.getPath().length() - strArrSplit[strArrSplit.length - 1].length());
            int i = 0;
            while (i < strArrSplit.length) {
                if (!bencodeFileTree2.contains(strArrSplit[i])) {
                    BencodeFileTree bencodeFileTreeB = b(bencodeFileItem.getIndex(), strArrSplit[i], bencodeFileItem.getSize(), bencodeFileTree2, i == strArrSplit.length - 1);
                    bencodeFileTreeArr[bencodeFileItem.getIndex()] = bencodeFileTreeB;
                    bencodeFileTree2.addChild(bencodeFileTreeB);
                }
                BencodeFileTree child = bencodeFileTree2.getChild(strArrSplit[i]);
                if (!child.isFile()) {
                    bencodeFileTree2 = child;
                }
                i++;
            }
            str = strSubstring;
        }
        return Pair.create(bencodeFileTree, bencodeFileTreeArr);
    }

    public static BencodeFileTree b(int i, String str, long j, BencodeFileTree bencodeFileTree, boolean z) {
        return z ? new BencodeFileTree(i, str, j, FileNode.Type.FILE, bencodeFileTree) : new BencodeFileTree(str, 0L, FileNode.Type.DIR, bencodeFileTree);
    }
}
