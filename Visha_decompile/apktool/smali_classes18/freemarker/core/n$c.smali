.class public Lfreemarker/core/n$c;
.super Lfreemarker/core/n$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/n$c$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfreemarker/core/n$a;-><init>(Ljava/lang/Boolean;I)V

    return-void
.end method


# virtual methods
.method public h0(Ljava/util/Date;ILfreemarker/core/Environment;)Lzfa;
    .locals 1

    invoke-virtual {p0, p2}, Lfreemarker/core/n$a;->j0(I)V

    new-instance v0, Lfreemarker/core/n$c$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lfreemarker/core/n$c$a;-><init>(Lfreemarker/core/n$c;Ljava/util/Date;ILfreemarker/core/Environment;)V

    return-object v0
.end method
