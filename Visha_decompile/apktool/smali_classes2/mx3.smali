.class public final synthetic Lmx3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre0$d;


# instance fields
.field public final synthetic a:Lwx3;


# direct methods
.method public synthetic constructor <init>(Lwx3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx3;->a:Lwx3;

    return-void
.end method


# virtual methods
.method public final timeUsToTargetTime(J)J
    .locals 0

    iget-object p0, p0, Lmx3;->a:Lwx3;

    invoke-virtual {p0, p1, p2}, Lwx3;->i(J)J

    move-result-wide p0

    return-wide p0
.end method
