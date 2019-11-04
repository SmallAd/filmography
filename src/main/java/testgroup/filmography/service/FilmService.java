package testgroup.filmography.service;

import java.util.List;
import testgroup.filmography.model.Film;

/**
 *
 * @author smallad
 */
public interface FilmService {
    
    List<Film> allFilms(int page);
    int filmsCount();
    void add(Film film);
    void delete(Film film);
    void edit(Film film);
    Film getById(int id);
}
