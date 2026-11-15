.class public Lc8a$b;
.super Lc8a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lyx8;

.field public final c:Lwx8;

.field public final d:Lwx8;

.field public final e:Lyx8;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa8

    invoke-direct {p0, v0}, Lc8a;-><init>(I)V

    new-instance v0, Lyx8;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lyx8;-><init>(I)V

    iput-object v0, p0, Lc8a$b;->b:Lyx8;

    new-instance v0, Lyx8;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lyx8;-><init>(I)V

    iput-object v0, p0, Lc8a$b;->e:Lyx8;

    new-instance v0, Lwx8;

    invoke-direct {v0, v1}, Lwx8;-><init>(I)V

    iput-object v0, p0, Lc8a$b;->d:Lwx8;

    new-instance v0, Lwx8;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lwx8;-><init>(I)V

    iput-object v0, p0, Lc8a$b;->c:Lwx8;

    return-void
.end method
