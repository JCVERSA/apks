.class public final synthetic Labh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lbbh;


# direct methods
.method public synthetic constructor <init>(Lbbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labh;->b:Lbbh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Labh;->b:Lbbh;

    invoke-static {p0}, Lbbh;->a(Lbbh;)Lebh;

    move-result-object p0

    return-object p0
.end method
