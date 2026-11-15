.class public Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;
.super Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/interfaces/ITranMediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranEvent"
.end annotation


# static fields
.field public static final END_REACHED:I = 0x204

.field public static final ITEM_ADDED:I = 0x200

.field public static final ITEM_DELETED:I = 0x202


# instance fields
.field public final index:I

.field public final media:Lcom/transsion/liblan/interfaces/ITranMedia;

.field private final retain:Z


# direct methods
.method public constructor <init>(ILcom/transsion/liblan/interfaces/ITranMedia;ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;-><init>(I)V

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/transsion/liblan/interfaces/ITranLANObject;->retain()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid media reference"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;->media:Lcom/transsion/liblan/interfaces/ITranMedia;

    iput-boolean p3, p0, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;->retain:Z

    iput p4, p0, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;->index:I

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;->retain:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;->media:Lcom/transsion/liblan/interfaces/ITranMedia;

    invoke-interface {p0}, Lcom/transsion/liblan/interfaces/ITranLANObject;->release()V

    :cond_0
    return-void
.end method
