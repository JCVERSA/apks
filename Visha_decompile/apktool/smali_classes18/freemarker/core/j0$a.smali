.class public Lfreemarker/core/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lofa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Lfreemarker/core/Environment;


# direct methods
.method public constructor <init>(Lfreemarker/core/Environment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfreemarker/core/j0$a;->b:Lfreemarker/core/Environment;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lzfa;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/j0$a;->b:Lfreemarker/core/Environment;

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->m1(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
