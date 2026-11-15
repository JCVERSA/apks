package defpackage;

import com.transsion.playercommon.whatsapp.WhatsappFile;
import com.transsion.sniffer_load.whatsappscan.BaseScanFragment;
import com.transsion.sniffer_load.whatsappscan.ScanImageFragment;
import com.transsion.sniffer_load.whatsappscan.ScanVideoFragment;

public abstract class z19 {
    public static BaseScanFragment a(WhatsappFile whatsappFile) {
        if (whatsappFile.getFileType() == 2) {
            return ScanImageFragment.W(whatsappFile);
        }
        return whatsappFile.getFileType() == 1 ? ScanVideoFragment.c0(whatsappFile) : BaseScanFragment.S(whatsappFile);
    }
}
