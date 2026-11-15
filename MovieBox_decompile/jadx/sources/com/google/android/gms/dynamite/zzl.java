package com.google.android.gms.dynamite;

import android.content.Context;

final class zzl implements DynamiteModule.VersionPolicy {
    zzl() {
    }

    @Override
    public final DynamiteModule.VersionPolicy.SelectionResult selectModule(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) throws DynamiteModule.LoadingException {
        int iZzb;
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        int iZza = iVersions.zza(context, str);
        selectionResult.localVersion = iZza;
        int i10 = 1;
        int i11 = 0;
        if (iZza != 0) {
            iZzb = iVersions.zzb(context, str, false);
            selectionResult.remoteVersion = iZzb;
        } else {
            iZzb = iVersions.zzb(context, str, true);
            selectionResult.remoteVersion = iZzb;
        }
        int i12 = selectionResult.localVersion;
        if (i12 == 0) {
            if (iZzb == 0) {
                i10 = 0;
            }
            selectionResult.selection = i10;
            return selectionResult;
        }
        i11 = i12;
        if (iZzb < i11) {
            i10 = -1;
        }
        selectionResult.selection = i10;
        return selectionResult;
    }
}
