CREATE TABLE "authors"(
    "id" INTEGER NOT NULL,
    "full_name" VARCHAR(100) NOT NULL
);
ALTER TABLE
    "authors" ADD PRIMARY KEY("id");
CREATE TABLE "books"(
    "id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "id_author" INTEGER NOT NULL,
    "year" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL
);
ALTER TABLE
    "books" ADD PRIMARY KEY("id");
CREATE TABLE "readers"(
    "id" INTEGER NOT NULL,
    "full_name" VARCHAR(100) NOT NULL,
    "address" VARCHAR(100) NOT NULL,
    "telephone_num" VARCHAR(11) NOT NULL
);
ALTER TABLE
    "readers" ADD PRIMARY KEY("id");
CREATE TABLE "lending"(
    "id" INTEGER NOT NULL,
    "book_id" INTEGER NOT NULL,
    "date_lending" DATE NOT NULL,
    "date_take" DATE NOT NULL,
    "reader_id" INTEGER NOT NULL
);
ALTER TABLE
    "lending" ADD PRIMARY KEY("id");
ALTER TABLE
    "lending" ADD CONSTRAINT "lending_book_id_foreign" FOREIGN KEY("book_id") REFERENCES "books"("id");
ALTER TABLE
    "books" ADD CONSTRAINT "books_id_author_foreign" FOREIGN KEY("id_author") REFERENCES "authors"("id");
ALTER TABLE
    "lending" ADD CONSTRAINT "lending_reader_id_foreign" FOREIGN KEY("reader_id") REFERENCES "readers"("id");