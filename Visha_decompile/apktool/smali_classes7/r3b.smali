.class public abstract synthetic Lr3b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;
    .locals 0

    invoke-static {p0}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object p0

    return-object p0
.end method
