.class public Lb8a$b;
.super Lb8a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb8a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final c:Lyx8;

.field public final d:Lyx8;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa8

    const/16 v1, 0x88

    invoke-direct {p0, v0, v1}, Lb8a;-><init>(II)V

    new-instance v0, Lyx8;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lyx8;-><init>(I)V

    iput-object v0, p0, Lb8a$b;->c:Lyx8;

    new-instance v0, Lyx8;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lyx8;-><init>(I)V

    iput-object v0, p0, Lb8a$b;->d:Lyx8;

    return-void
.end method
