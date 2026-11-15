.class public abstract Lr6i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1f;


# instance fields
.field public final a:Le4f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le4f;

    invoke-direct {v0}, Le4f;-><init>()V

    iput-object v0, p0, Lr6i;->a:Le4f;

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 6

    invoke-interface {p0}, Ll1f;->zze()I

    move-result v1

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lr6i;->h(IJIZ)V

    return-void
.end method

.method public abstract h(IJIZ)V
.end method
