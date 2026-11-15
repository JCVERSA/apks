.class public abstract Lnet/grandcentrix/tray/core/TrayStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lle8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/tray/core/TrayStorage$Type;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lnet/grandcentrix/tray/core/TrayStorage$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/grandcentrix/tray/core/TrayStorage;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/grandcentrix/tray/core/TrayStorage;->b:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/grandcentrix/tray/core/TrayStorage;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lnet/grandcentrix/tray/core/TrayStorage$Type;
    .locals 0

    iget-object p0, p0, Lnet/grandcentrix/tray/core/TrayStorage;->b:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    return-object p0
.end method

.method public abstract registerOnTrayPreferenceChangeListener(Lpf7;)V
    .param p1    # Lpf7;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unregisterOnTrayPreferenceChangeListener(Lpf7;)V
    .param p1    # Lpf7;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
