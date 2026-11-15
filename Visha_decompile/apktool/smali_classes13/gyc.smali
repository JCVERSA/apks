.class public final synthetic Lgyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lls6;


# direct methods
.method public synthetic constructor <init>(Lls6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgyc;->b:Lls6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lgyc;->b:Lls6;

    check-cast p1, Lxz4;

    invoke-virtual {p0, p1}, Lyz4;->d(Lxz4;)V

    return-void
.end method
