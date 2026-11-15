.class public final Ll45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/storage/DivStorageComponent;


# instance fields
.field public final b:Lcom/yandex/div/storage/DivDataRepository;

.field public final c:Lcom/yandex/div/storage/c;

.field public final d:Lcom/yandex/div/storage/b;


# direct methods
.method public constructor <init>(Lcom/yandex/div/storage/DivDataRepository;Lcom/yandex/div/storage/c;Lcom/yandex/div/storage/b;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawJsonRepository"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll45;->b:Lcom/yandex/div/storage/DivDataRepository;

    iput-object p2, p0, Ll45;->c:Lcom/yandex/div/storage/c;

    iput-object p3, p0, Ll45;->d:Lcom/yandex/div/storage/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/div/storage/c;
    .locals 0

    iget-object p0, p0, Ll45;->c:Lcom/yandex/div/storage/c;

    return-object p0
.end method
