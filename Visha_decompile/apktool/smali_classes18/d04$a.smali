.class public final Ld04$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnz3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld04;->d(Ljava/lang/Object;)Lnz3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ld04$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Loz3;Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld04$a;->b:Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Loz3;->emit(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
