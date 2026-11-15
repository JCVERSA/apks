.class public Lcom/hunantv/media/player/libnative/ImgoHandApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static info:Lcom/hunantv/media/player/libnative/ImgoImageInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native create_overlay(III)V
.end method

.method public static native display()V
.end method

.method public static native execute(Lcom/hunantv/media/player/libnative/ImgoImageInfo;)Lcom/hunantv/media/player/libnative/ImgoHandResult;
.end method

.method public static native free_overlay()V
.end method

.method public static native get_version()Ljava/lang/String;
.end method

.method public static native init()V
.end method

.method public static native set_surface(Landroid/view/Surface;)V
.end method

.method public static native uninit()V
.end method
