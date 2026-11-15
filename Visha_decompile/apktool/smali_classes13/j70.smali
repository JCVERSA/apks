.class public final synthetic Lj70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/schabi/newpipe/extractor/playlist/c;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/playlist/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj70;->b:Lorg/schabi/newpipe/extractor/playlist/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lj70;->b:Lorg/schabi/newpipe/extractor/playlist/c;

    check-cast p1, Lx60;

    invoke-virtual {p0, p1}, Lyz4;->d(Lxz4;)V

    return-void
.end method
