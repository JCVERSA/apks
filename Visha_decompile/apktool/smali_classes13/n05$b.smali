.class public final Ln05$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ln05$b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Ln05$b;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Ln05$b;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Ln05$b;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Ln05$b;->e:Ljava/lang/String;

    .line 8
    iput p6, p0, Ln05$b;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo05;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Ln05$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
