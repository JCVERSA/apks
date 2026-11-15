.class public final synthetic Lich;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ljch;


# direct methods
.method public synthetic constructor <init>(Ljch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lich;->b:Ljch;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lich;->b:Ljch;

    invoke-static {p0}, Ljch;->a(Ljch;)Lkch;

    move-result-object p0

    return-object p0
.end method
