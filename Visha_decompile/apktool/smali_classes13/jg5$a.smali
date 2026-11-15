.class public Ljg5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljg5$b;

.field public final b:Lem5;


# direct methods
.method public constructor <init>(Ljg5$b;Lem5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg5$a;->a:Ljg5$b;

    iput-object p2, p0, Ljg5$a;->b:Lem5;

    return-void
.end method
