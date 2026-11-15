.class public final synthetic Lkm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkm;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lkm;->b:Z

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->z0(ZLjava/lang/Throwable;)V

    return-void
.end method
