.class public Ltl5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final d:Ltl5$a;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lorg/schabi/newpipe/extractor/Page;

.field public final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ltl5$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ltl5$a;-><init>(Ljava/util/List;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;)V

    sput-object v0, Ltl5$a;->d:Ltl5$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ltl5$a;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Ltl5$a;->b:Lorg/schabi/newpipe/extractor/Page;

    .line 5
    iput-object p3, p0, Ltl5$a;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lyz4;Lorg/schabi/newpipe/extractor/Page;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lyz4;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lyz4;->e()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Ltl5$a;-><init>(Ljava/util/List;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;)V

    return-void
.end method

.method public static a()Ltl5$a;
    .locals 1

    sget-object v0, Ltl5$a;->d:Ltl5$a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ltl5$a;->c:Ljava/util/List;

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ltl5$a;->a:Ljava/util/List;

    return-object p0
.end method

.method public d()Lorg/schabi/newpipe/extractor/Page;
    .locals 0

    iget-object p0, p0, Ltl5$a;->b:Lorg/schabi/newpipe/extractor/Page;

    return-object p0
.end method
