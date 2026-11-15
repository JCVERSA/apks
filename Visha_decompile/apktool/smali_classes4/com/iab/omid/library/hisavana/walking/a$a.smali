.class public Lcom/iab/omid/library/hisavana/walking/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iab/omid/library/hisavana/walking/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Libd;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Libd;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/walking/a$a;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/walking/a$a;->a:Libd;

    invoke-virtual {p0, p2}, Lcom/iab/omid/library/hisavana/walking/a$a;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Libd;
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a$a;->a:Libd;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/a$a;->b:Ljava/util/ArrayList;

    return-object p0
.end method
