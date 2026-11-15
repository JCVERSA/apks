.class public final synthetic Lrdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lsdh;


# direct methods
.method public synthetic constructor <init>(Lsdh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrdh;->b:Lsdh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrdh;->b:Lsdh;

    invoke-static {p0}, Lsdh;->a(Lsdh;)Ltdh;

    move-result-object p0

    return-object p0
.end method
