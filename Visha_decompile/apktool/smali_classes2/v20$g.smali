.class public final Lv20$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final a:Lv20$g;

.field public static final b:Lvp3;

.field public static final c:Lvp3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv20$g;

    invoke-direct {v0}, Lv20$g;-><init>()V

    sput-object v0, Lv20$g;->a:Lv20$g;

    const-string/jumbo v0, "startMs"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lv20$g;->b:Lvp3;

    const-string v0, "endMs"

    invoke-static {v0}, Lvp3;->a(Ljava/lang/String;)Lvp3$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvp3$b;->b(Ljava/lang/annotation/Annotation;)Lvp3$b;

    move-result-object v0

    invoke-virtual {v0}, Lvp3$b;->a()Lvp3;

    move-result-object v0

    sput-object v0, Lv20$g;->c:Lvp3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lxna;

    check-cast p2, Lzb7;

    invoke-virtual {p0, p1, p2}, Lv20$g;->b(Lxna;Lzb7;)V

    return-void
.end method

.method public b(Lxna;Lzb7;)V
    .locals 2

    sget-object p0, Lv20$g;->b:Lvp3;

    invoke-virtual {p1}, Lxna;->b()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lzb7;->d(Lvp3;J)Lzb7;

    sget-object p0, Lv20$g;->c:Lvp3;

    invoke-virtual {p1}, Lxna;->a()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lzb7;->d(Lvp3;J)Lzb7;

    return-void
.end method
