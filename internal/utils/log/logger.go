package log

import (
	"fmt"
	"log/slog"
	"os"
)

var (
	logger *slog.Logger
)

func init() {
	logger = slog.New(slog.NewJSONHandler(os.Stdout, nil)).
		With(slog.String("service", "gophermart"))

	slog.SetDefault(logger)
}

func Fatalln(v ...any) {
	logger.Error(fmt.Sprintln(v...))
	os.Exit(1)
}

func Infoln(v ...any) {
	logger.Info(fmt.Sprintln(v...))
	os.Exit(1)
}
