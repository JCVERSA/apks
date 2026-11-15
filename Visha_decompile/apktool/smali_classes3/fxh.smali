.class public final synthetic Lfxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ljxh;


# direct methods
.method public synthetic constructor <init>(Ljxh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxh;->b:Ljxh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfxh;->b:Ljxh;

    invoke-static {p0}, Ljxh;->a(Ljxh;)Lcom/google/android/gms/internal/ads/t;

    move-result-object p0

    return-object p0
.end method
