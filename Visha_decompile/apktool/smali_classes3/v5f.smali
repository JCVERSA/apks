.class public final Lv5f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final a:Ln3f;

.field public final synthetic b:Lw5f;


# direct methods
.method public constructor <init>(Lw5f;Ln3f;)V
    .locals 0

    iput-object p1, p0, Lv5f;->b:Lw5f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv5f;->a:Ln3f;

    return-void
.end method

.method public static bridge synthetic b(Lv5f;)Ln3f;
    .locals 0

    iget-object p0, p0, Lv5f;->a:Ln3f;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lejf;

    iget-object p1, p0, Lv5f;->a:Ln3f;

    iget-object p0, p0, Lv5f;->b:Lw5f;

    invoke-interface {p1, p0, p2}, Ln3f;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
