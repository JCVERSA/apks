.class public Lnk5$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnk5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lnk5$f;


# direct methods
.method public constructor <init>(ZLnk5$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnk5$b;->a:Z

    iput-object p2, p0, Lnk5$b;->b:Lnk5$f;

    return-void
.end method
