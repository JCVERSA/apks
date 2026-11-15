package com.amazonaws.services.s3.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class MultiObjectDeleteException extends AmazonS3Exception {
    private static final long serialVersionUID = -2004213552302446866L;
    private final List<DeleteObjectsResult.DeletedObject> deletedObjects;
    private final List<DeleteError> errors;

    public static class DeleteError {

        private String f18120a;

        private String f18121b;

        private String f18122c;

        private String f18123d;

        public void a(String str) {
            this.f18122c = str;
        }

        public void b(String str) {
            this.f18120a = str;
        }

        public void c(String str) {
            this.f18123d = str;
        }

        public void d(String str) {
            this.f18121b = str;
        }
    }

    public MultiObjectDeleteException(Collection<DeleteError> collection, Collection<DeleteObjectsResult.DeletedObject> collection2) {
        super("One or more objects could not be deleted");
        ArrayList arrayList = new ArrayList();
        this.errors = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.deletedObjects = arrayList2;
        arrayList2.addAll(collection2);
        arrayList.addAll(collection);
    }

    public List<DeleteObjectsResult.DeletedObject> getDeletedObjects() {
        return this.deletedObjects;
    }

    @Override
    public String getErrorCode() {
        return super.getErrorCode();
    }

    public List<DeleteError> getErrors() {
        return this.errors;
    }
}
