.class public final Lc8i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lc8i;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc8i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc8i;-><init>(Z)V

    sput-object v0, Lc8i;->b:Lc8i;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lc8i;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lg0j;I)Liki;
    .locals 1

    new-instance v0, Ll7i;

    invoke-direct {v0, p1, p2}, Ll7i;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lc8i;->a:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
