.class public final synthetic Lxv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lk78;


# direct methods
.method public synthetic constructor <init>(Lk78;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxv;->b:Lk78;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lxv;->b:Lk78;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->a(Lk78;Ljava/util/List;)V

    return-void
.end method
