.class public final Lruf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lpuf;


# direct methods
.method public constructor <init>(Lpuf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lruf;->a:Lpuf;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lruf;->a:Lpuf;

    invoke-virtual {p0}, Lpuf;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lruf;->a:Lpuf;

    invoke-virtual {p0}, Lpuf;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
