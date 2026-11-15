package com.mbridge.msdk.foundation.download.resource;

import com.mbridge.msdk.foundation.download.database.IDatabaseHelper;

class ResourceStrategyExecutor implements IResourceStrategy {
    private ResourceStrategy resourceStrategy;

    public ResourceStrategyExecutor(ResourceStrategy resourceStrategy) {
        this.resourceStrategy = resourceStrategy;
    }

    @Override
    public String getResourceStrategyName() {
        return this.resourceStrategy.getResourceStrategyName();
    }

    @Override
    public void processResource(MBResourceManager mBResourceManager, IDatabaseHelper iDatabaseHelper, ResourceConfig resourceConfig) {
        ResourceStrategy resourceStrategy = this.resourceStrategy;
        if (resourceStrategy != null) {
            try {
                resourceStrategy.processResource(mBResourceManager, iDatabaseHelper, resourceConfig);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
