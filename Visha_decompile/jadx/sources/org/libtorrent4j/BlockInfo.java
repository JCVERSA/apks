package org.libtorrent4j;

import org.libtorrent4j.swig.block_info;

public final class BlockInfo {
    private final block_info b;

    public enum BlockState {
        NONE(block_info.block_state_t.none.swigValue()),
        REQUESTED(block_info.block_state_t.requested.swigValue()),
        WRITING(block_info.block_state_t.writing.swigValue()),
        FINISHED(block_info.block_state_t.finished.swigValue()),
        UNKNOWN(-1);

        private final int swigValue;

        BlockState(int i) {
            this.swigValue = i;
        }

        public static BlockState fromSwig(int i) {
            for (BlockState blockState : (BlockState[]) BlockState.class.getEnumConstants()) {
                if (blockState.swig() == i) {
                    return blockState;
                }
            }
            return UNKNOWN;
        }

        public int swig() {
            return this.swigValue;
        }
    }

    public BlockInfo(block_info block_infoVar) {
        this.b = block_infoVar;
    }

    public int blockSize() {
        return (int) this.b.getBlock_size();
    }

    public int bytesProgress() {
        return (int) this.b.getBytes_progress();
    }

    public int numPeers() {
        return (int) this.b.getNum_peers();
    }

    public TcpEndpoint peer() {
        return new TcpEndpoint(this.b.peer());
    }

    public BlockState state() {
        return BlockState.fromSwig((int) this.b.getState());
    }

    public block_info swig() {
        return this.b;
    }
}
