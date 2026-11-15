.class public interface abstract Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISandAccessor"
.end annotation


# static fields
.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1

.field public static final FLAG_STORAGE_EXTERNAL:I = 0x4


# virtual methods
.method public abstract copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract deleteFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract listFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runCommand(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;)V
.end method
