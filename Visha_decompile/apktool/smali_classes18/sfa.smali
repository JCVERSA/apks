.class public abstract Lsfa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Locale;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsfa;->a:Ljava/lang/String;

    iput-object p2, p0, Lsfa;->b:Ljava/util/Locale;

    iput-object p3, p0, Lsfa;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lufa;
    .locals 0

    invoke-static {}, Lufa;->a()Lufa;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lsfa;->b:Ljava/util/Locale;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsfa;->a:Ljava/lang/String;

    return-object p0
.end method

.method public abstract d(Ljava/lang/String;Ljava/util/Locale;)Lufa;
.end method
