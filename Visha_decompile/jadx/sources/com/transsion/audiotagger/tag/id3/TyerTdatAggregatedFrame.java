package com.transsion.audiotagger.tag.id3;

import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTDAT;
import java.util.Iterator;

public class TyerTdatAggregatedFrame extends AggregatedFrame {
    public static final String ID_TYER_TDAT = "TYERTDAT";

    @Override
    public String getContent() {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractID3v2Frame> it = this.frames.iterator();
        sb.append(it.next().getContent());
        AbstractID3v2Frame next = it.next();
        if (next.getContent().length() == 4) {
            sb.append("-");
            sb.append(next.getContent().substring(2, 4));
            if (!((FrameBodyTDAT) next.getBody()).isMonthOnly()) {
                sb.append("-");
                sb.append(next.getContent().substring(0, 2));
            }
        }
        return sb.toString();
    }
}
