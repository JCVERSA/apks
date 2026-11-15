package org.libtorrent4j;

import org.libtorrent4j.swig.move_flags_t;

public enum MoveFlags {
    ALWAYS_REPLACE_FILES(move_flags_t.always_replace_files),
    FAIL_IF_EXIST(move_flags_t.fail_if_exist),
    DONT_REPLACE(move_flags_t.dont_replace),
    RESET_SAVE_PATH(move_flags_t.reset_save_path),
    RESET_SAVE_PATH_UNCHECKED(move_flags_t.reset_save_path_unchecked);

    private final move_flags_t swigValue;

    MoveFlags(move_flags_t move_flags_tVar) {
        this.swigValue = move_flags_tVar;
    }

    public static MoveFlags fromSwig(move_flags_t move_flags_tVar) {
        for (MoveFlags moveFlags : (MoveFlags[]) MoveFlags.class.getEnumConstants()) {
            if (moveFlags.swig() == move_flags_tVar) {
                return moveFlags;
            }
        }
        throw new IllegalArgumentException("Enum value not supported");
    }

    public move_flags_t swig() {
        return this.swigValue;
    }
}
