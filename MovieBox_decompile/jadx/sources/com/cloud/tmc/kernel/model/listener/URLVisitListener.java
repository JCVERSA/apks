package com.cloud.tmc.kernel.model.listener;

import com.cloud.tmc.kernel.node.DataNode;

public interface URLVisitListener {
    DataNode onVisitStart(String str);
}
