.class public Ld8a$b;
.super Ld8a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lwx8;

.field public final b:Lwx8;

.field public final c:Lcsc;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ld8a;-><init>()V

    new-instance v0, Lyx8;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lyx8;-><init>(I)V

    iput-object v0, p0, Ld8a$b;->c:Lcsc;

    new-instance v0, Lwx8;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lwx8;-><init>(I)V

    iput-object v0, p0, Ld8a$b;->a:Lwx8;

    new-instance v0, Lwx8;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lwx8;-><init>(I)V

    iput-object v0, p0, Ld8a$b;->b:Lwx8;

    return-void
.end method
